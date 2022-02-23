#
#  Module: strips
# 
#  This module provides classes for representing STRIPS-based
#  planning domains:
#     Predicate - used to represent conditions in states and operators
#     Operator  - used to represent STRIPS operators
#     STRIPS - a "SearchDomain" for planning with STRIPS operators
#
#  (c) Luis Seabra Lopes
#  Inteligência Artificial & Introducao a Inteligencia Artificial, 2019
#
import types

from Pratica.G1.blocksworld import On
from Pratica.G1.tree_search import *
from functools import reduce
from itertools import product


# Predicates used to describe states, preconditions and effects
class Predicate:
    def __str__(self):
        argsstr = args2string(self.args)
        return type(self).__name__ + "(" + argsstr + ")"

    def __repr__(self):
        return str(self)

    def __eq__(self, predicate):  # allows for comparisons with "==", etc.
        return str(self) == str(predicate)

    def substitute(self, assign):  # Substitute the arguments in a predicate
        la = self.args  # by constants according to a given
        if len(la) == 0:  # assignment (i.e. a dictionary)
            return type(self)()
        if len(la) == 1:
            return type(self)(assign[la[0]])
        # add other cases if needed
        return type(self)(assign[la[0]], assign[la[1]])


# STRIPS operators
# -- operators for a specific domain will be subclasses
# -- concrete actions will be instances of specific operators
class Operator:

    def __init__(self, args, pc, neg, pos):
        self.args = args
        self.pc = pc
        self.neg = neg
        self.pos = pos

    def __str__(self):
        return type(self).__name__ + '([' + args2string(self.args) + "]," + \
               str(self.pc) + ',' + str(self.neg) + ',' + \
               str(self.pos) + ')'

    def __repr__(self):
        argsstr = args2string(self.args)
        return type(self).__name__ + "(" + argsstr + ")"

    # Produce a concrete action by instanciating a specific 
    # operator (i.e. the "Operator" subclass where the method was 
    # called) for the arguments given in "args"
    # ( returns None if the action is not applicable in the given "state" )
    @classmethod
    def instanciate(cls, args):
        if len(args) != len(cls.args):
            return None
        assign = dict(zip(cls.args, args))
        pc = [p.substitute(assign) for p in cls.pc]
        neg = [p.substitute(assign) for p in cls.neg]
        pos = [p.substitute(assign) for p in cls.pos]
        return cls(args, pc, neg, pos)


# Search domains based on STRIPS actions
class STRIPS(SearchDomain):

    # constructor
    def __init__(self):
        pass

    # list of applicable actions in a given "state"
    def actions(self, state):
        constants = state_constants(state)
        operators = Operator.__subclasses__()
        actions = []
        for op in operators:
            lassign = assignments(op.args, constants)
            for assign in lassign:
                argvalues = [assign[a] for a in op.args]
                action = op.instanciate(argvalues)
                if all(c in state for c in action.pc):
                    actions.append(action)
        return actions

    # Result of a given "action" in a given "state"
    # ( returns None, if the action is not applicable in the state)
    def result(self, state, action):

        if False in [pre in state for pre in action.pc]:
            return None
        else:
            for pos in action.pc:
                state.remove(pos)

            state += action.pos
            return state

    def cost(self, state, action):
        return len(action.pos) if False in [pre in state for pre in action.pc] else float('inf')

    def heuristic(self, state, goal):

        result = 0

        for e, k in enumerate(state):
            if k not in goal:
                result += 2
                if k is isinstance(On) and On(*k.args.reverse()) in goal:
                    result += 2
            else:
                if goal[e] != k:
                    result += 2
                    if k is isinstance(On):
                        result += 2

        return result

    # Checks if a given "goal" is satisfied in a given "state"
    def satisfies(self, state, goal):
        return state is not None \
               and len(state) == len(goal) \
               and False not in [obj in goal for obj in state]


# Auxiliary functions

def state_constants(state):
    return list(set(reduce(lambda r, h: h.args + r, state, [])))


def assignments(lvars, lconsts):
    lcombs = product(lconsts, repeat=len(lvars))
    makeassign = lambda comb: dict(zip(lvars, comb))
    return list(map(makeassign, lcombs))


def args2string(args):
    if not args:
        return ""
    return reduce(lambda r, h: r + ',' + str(h), args[1:], str(args[0]))
