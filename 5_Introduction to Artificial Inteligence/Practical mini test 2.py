from semantic_network import *
from bayes_net import *


class MySN(SemanticNetwork):

    def query_dependents(self, entity, first=True, subtype=True):

        tmp = []

        # List of entities with all dependents from one specific entity
        dependents = [d.relation.entity1 for d in self.declarations if
                      d.relation.entity2 == entity and isinstance(d.relation, Depends)]

        for dep in dependents:
            tmp += self.query_dependents(dep, first=False, subtype=False)

        # List of entities with all subtypes from one specific entity
        subtypes = [d.relation.entity1 for d in self.declarations if
                    d.relation.entity2 == entity and isinstance(d.relation, Subtype)]

        # Add entity to the final list
        if not first and not subtype and not subtypes:
            tmp += [entity]

        for sub in subtypes:
            tmp += self.query_dependents(sub, first=False, subtype=subtype)

        # Remove duplicates
        return list(set(tmp))

    def query_causes(self, entity, first=False):

        # List of entities with all dependents and subtypes from one specific entity
        pds = [self.query_causes(d.relation.entity2, True) for d in self.declarations
               if d.relation.entity1 == entity and (isinstance(d.relation, Depends) or isinstance(d.relation, Subtype))]

        # If is the last recursive call
        if not first:
            # Remove duplicates
            depend = list(set([item for sublist in pds for item in sublist]))

            # List with all Types from the list of entities
            types = [d.relation.entity2 for d in self.declarations
                     if d.relation.entity2 in depend and isinstance(d.relation, Subtype)]

            # Remove the types from the list of entities
            return list(filter(lambda x: x not in types, depend))

        # add the entity to the list of entities
        return [item for sublist in pds for item in sublist] + [entity]

    def query_causes_sorted(self, entity):

        # Identification of causes
        causes = self.query_causes(entity)

        result = []

        for cause in causes:
            # Get a list with all debug times associated with a cause
            deb_time = [d.relation.entity2 for d in self.declarations
                        if d.relation.entity1 == cause and
                        d.relation.name == 'debug_time' and
                        isinstance(d.relation, Association)]

            # Add cause and avg time to the result
            result.append((cause, int(sum(deb_time) / len(deb_time))))

        # Sort by avg and in case of duplicate avgs sort by name
        return sorted(result, key=lambda x: (x[1], x[0]))


class MyBN(BayesNet):

    def markov_blanket(self, var):

        # Get var parent
        aux_var_parent = [dict(j).keys() for k, v in self.dependencies.items() for j in v if k == var]
        var_parent = [k for k in aux_var_parent[0]]

        # Get var children
        var_children = [k for k, v in self.dependencies.items() for j in v if dict(j).get(var)]

        # Get the parents from the children of var that are no var
        final = []
        for kv in var_children:
            aux_var_son_parent = [dict(j).keys() for k, v in self.dependencies.items() for j in v if k == kv]
            final += [k for k in aux_var_son_parent[0] if k != var]

        # Remove duplicates
        return list(set(var_children + var_parent + final))
