import math
from functools import reduce

from tree_search import *


class MySearchNode(SearchNode):

    def __init__(self, state, parent, depth, cost, evalfunc):
        super().__init__(state, parent)
        self.depth = depth
        self.cost = cost
        self.evalfunc = evalfunc
        self.children = None

    def in_parent(self, state):
        if self.parent is None:
            return False
        elif self.parent.state == state:
            return True
        else:
            return self.parent.in_parent(state)


class MyTree(SearchTree):

    def __init__(self, problem, strategy='breadth', max_nodes=None):
        self.problem = problem
        self.root = MySearchNode(problem.initial,
                                 None,
                                 0,
                                 0,
                                 problem.domain.heuristic(problem.initial, problem.goal),
                                 )
        self.open_nodes = [self.root]
        self.strategy = strategy
        self.solution_cost = 0
        self.solution_length = 0
        self.total_nodes = 1
        self.terminal_nodes = 1
        self.non_terminal_nodes = 0
        self.max_nodes = max_nodes

    def astar_add_to_open(self, lnewnodes):
        self.open_nodes = sorted(self.open_nodes + lnewnodes, key=lambda total: total.evalfunc)

    # based on http://ozark.hendrix.edu/~ferrer/courses/335/f11/lectures/effective-branching.html
    def effective_branching_factor(self):

        # Effective branching factor close guess.
        estimate_b = self.total_nodes ** (1 / self.solution_length)

        # Error definition (any number +/- error just will differ from the exact number after the 3rd decimal case).
        error = 0.00009

        # Interval of values to be tested in order to find one effective branching factor that satisfies the error.
        bottom_limit = estimate_b - 1
        top_limit = estimate_b + 1

        while True:

            # (Total number of nodes processed)' starts at 1 to avoid this operation b ** 0.
            n = 1

            # Effective branching factor to be tested.
            b = (bottom_limit + top_limit) / 2

            # tmp used to apply binary search.
            tmp = (top_limit - bottom_limit) / 2

            # Find the (total number of nodes processed)' associated with the effective branching factor actual.
            for k in range(1, self.solution_length + 1):
                n += b ** k

            # Verify if the 2 numbers of (total number of nodes processed) are within the margin of error.
            # If not apply binary search to find the value.
            if n - self.total_nodes > error:
                top_limit -= tmp
            elif n - self.total_nodes < -error:
                bottom_limit += tmp
            else:
                return b

    def update_ancestors(self, node):

        # Change the value of the node.evalfunc to infinite to ensure that the value is bigger than all the others.
        node.evalfunc = float('inf')

        # Go to all the children nodes and find the lowest evalfunc and put it on the father evalfunc
        for node1 in node.children:
            if node1.evalfunc < node.evalfunc:
                node.evalfunc = node1.evalfunc

        # If root return it.
        if node.parent is None:
            return node

        # Else Verify what was before mentioned for the node father.
        else:
            return self.update_ancestors(node.parent)

    # Get all the leafs from the tree.
    def get_children(self, element):

        result = []

        if not element.children:
            return [element]

        for children in element.children:
            result += self.get_children(children)

        return result

    def discard_worse(self):

        # Gets all the leafs.
        childrens = self.get_children(self.root)

        # Get all the parents with leafs.
        parents_leafs = list(set([child.parent for child in childrens]))

        # Remove parents with children that are parents to.
        parents_just_leafs = parents_leafs.copy()

        for parent in parents_leafs:
            for children in parent.children:
                if children not in childrens:
                    parents_just_leafs.remove(parent)
                    break

        # Get the parent with the higher evalfunc.
        parent = reduce(lambda x, y: x if x.evalfunc > y.evalfunc else y, parents_just_leafs)

        # Remove the children from the queue.
        for child in parent.children:

            for node in self.open_nodes:
                if node == child:
                    self.open_nodes.remove(node)

        self.non_terminal_nodes -= 1

        # Add the parent without children to the queue.
        parent.children.clear()
        self.open_nodes.append(parent)

    def search2(self):

        while self.open_nodes:

            if self.max_nodes is not None:
                while self.non_terminal_nodes + len(self.open_nodes) > self.max_nodes:
                    self.discard_worse()

            node = self.open_nodes.pop(0)
            if self.problem.goal_test(node.state):
                self.solution_cost = node.cost
                self.terminal_nodes += len(self.open_nodes)
                self.solution_length = node.depth
                return self.get_path(node)
            if node.children is None:
                node.children = []
            lnewnodes = []
            for a in self.problem.domain.actions(node.state):
                newstate = self.problem.domain.result(node.state, a)
                cost = node.cost + self.problem.domain.cost(node.state, a)
                newnode = MySearchNode(newstate,
                                       node,
                                       node.depth + 1,
                                       cost,
                                       cost + self.problem.domain.heuristic(newstate, self.problem.goal),
                                       )
                if not node.in_parent(newstate):
                    lnewnodes.append(newnode)
                    node.children.append(newnode)

            if lnewnodes:
                self.non_terminal_nodes += 1
                self.total_nodes += len(lnewnodes)

            self.update_ancestors(node)
            self.add_to_open(lnewnodes)
        return None

    # shows the search tree in the form of a listing
    def show(self, heuristic=False, node=None, indent=''):
        if node == None:
            self.show(heuristic, self.root)
            print('\n')
        else:
            line = indent + node.state
            if heuristic:
                line += (' [' + str(node.evalfunc) + ']')
            print(line)
            if node.children == None:
                return
            for n in node.children:
                self.show(heuristic, n, indent + '  ')
