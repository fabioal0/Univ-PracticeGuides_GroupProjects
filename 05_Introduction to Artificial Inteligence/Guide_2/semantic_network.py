# Guiao de representacao do conhecimento
# -- Redes semanticas
# 
# Inteligencia Artificial & Introducao a Inteligencia Artificial
# DETI / UA
#
# (c) Luis Seabra Lopes, 2012-2020
# v1.9 - 2019/10/20
#


# Classe Relation, com as seguintes classes derivadas:
#     - Association - uma associacao generica entre duas entidades
#     - Subtype     - uma relacao de subtipo entre dois tipos
#     - Member      - uma relacao de pertenca de uma instancia a um tipo
#
from collections import Counter


class Relation:
    def __init__(self, e1, rel, e2):
        self.entity1 = e1
        #       self.relation = rel  # obsoleto
        self.name = rel
        self.entity2 = e2

    def __str__(self):
        return self.name + "(" + str(self.entity1) + "," + \
               str(self.entity2) + ")"

    def __repr__(self):
        return str(self)


class AssocNum(Relation):
    def __init__(self, e1, assoc, e2):
        Relation.__init__(self, e1, assoc, float(e2))


class AssocOne(Relation):
    def __init__(self, e1, assoc, e2):
        Relation.__init__(self, e1, assoc, e2)


# Subclasse Association
class Association(Relation):
    def __init__(self, e1, assoc, e2):
        Relation.__init__(self, e1, assoc, e2)


#   Exemplo:
#   a = Association('socrates','professor','filosofia')

# Subclasse Subtype
class Subtype(Relation):
    def __init__(self, sub, super):
        Relation.__init__(self, sub, "subtype", super)


#   Exemplo:
#   s = Subtype('homem','mamifero')

# Subclasse Member
class Member(Relation):
    def __init__(self, obj, type):
        Relation.__init__(self, obj, "member", type)


#   Exemplo:
#   m = Member('socrates','homem')

# classe Declaration
# -- associa um utilizador a uma relacao por si inserida
#    na rede semantica
#
class Declaration:
    def __init__(self, user, rel):
        self.user = user
        self.relation = rel

    def __str__(self):
        return "decl(" + str(self.user) + "," + str(self.relation) + ")"

    def __repr__(self):
        return str(self)


#   Exemplos:
#   da = Declaration('descartes',a)
#   ds = Declaration('darwin',s)
#   dm = Declaration('descartes',m)

# classe SemanticNetwork
# -- composta por um conjunto de declaracoes
#    armazenado na forma de uma lista
#
class SemanticNetwork:
    def __init__(self, ldecl=[]):
        self.declarations = ldecl

    def __str__(self):
        return my_list2string(self.declarations)

    def insert(self, decl):
        self.declarations.append(decl)

    def query_local(self, user=None, e1=None, rel=None, e2=None):
        self.query_result = \
            [d for d in self.declarations
             if (user == None or d.user == user)
             and (e1 == None or d.relation.entity1 == e1)
             and (rel == None or d.relation.name == rel)
             and (e2 == None or d.relation.entity2 == e2)]
        return self.query_result

    def show_query_result(self):
        for d in self.query_result:
            print(str(d))

    def list_associations(self):
        return list(set([d.relation.name for d in self.declarations if isinstance(d.relation, Association)]))

    def entity_list(self):
        return list(set([d.relation.entity1 for d in self.declarations if isinstance(d.relation, Member)]))

    def user_list(self):
        return list(set([d.user for d in self.declarations]))

    def type_list(self):
        return list(set([d.relation.entity2 for d in self.declarations if
                         isinstance(d.relation, Member) or isinstance(d.relation, Subtype)] + [d.relation.entity1 for d
                                                                                               in self.declarations if
                                                                                               isinstance(d.relation,
                                                                                                          Member) or isinstance(
                                                                                                   d.relation,
                                                                                                   Subtype)]))

    def local_associations(self, relat):
        return list(set([d.relation.name for d in self.declarations if isinstance(d.relation, Association) and (
                d.relation.entity1 == relat or d.relation.entity2 == relat)]))

    def list_relation_by_user(self, user):
        return list(set([d.relation.name for d in self.declarations if d.user == user]))

    def list_association_by_user(self, user):
        return len(
            set([d.relation.name for d in self.declarations if isinstance(d.relation, Association) and d.user == user]))

    def list_local_association_by_user(self, entity):
        return list(set([(d.relation.name, d.user) for d in self.declarations if
                        isinstance(d.relation, Association) and (
                                d.relation.entity1 == entity or d.relation.entity2 == entity)]))

    def predecessor(self, A, B):

        pds = [d.relation.entity2 for d in self.declarations if
               (isinstance(d.relation, Member) or isinstance(d.relation, Subtype)) and d.relation.entity1 == B]

        if A in pds:
            return True

        return any([self.predecessor(A, p) for p in pds])

    def predecessor_path(self, A, B):

        pds = [d.relation.entity2 for d in self.declarations if
               (isinstance(d.relation, Member) or isinstance(d.relation, Subtype)) and d.relation.entity1 == B]

        if A in pds:
            return [A, B]

        for p in pds:
            path = self.predecessor_path(A, p)
            if path is not None:
                return path + [B]

        return None

    def query(self, entity, relation=None):

        pds = [self.query(d.relation.entity2, relation) for d in self.declarations if
               (isinstance(d.relation, Member) or isinstance(d.relation, Subtype)) and d.relation.entity1 == entity]

        return [item for sublist in pds for item in sublist] + self.query_local(e1=entity, rel=relation)

    def query2(self, entity, relation=None):

        pds = [self.query2(d.relation.entity2, relation) for d in self.declarations if
               (isinstance(d.relation, Member) or isinstance(d.relation, Subtype)) and d.relation.entity1 == entity]

        return [item for sublist in pds for item in sublist if
                isinstance(item.relation, Association)] + self.query_local(e1=entity, rel=relation)

    def query_cancel(self, entity, relation=None):

        pds = [self.query_cancel(d.relation.entity2, relation) for d in self.declarations if
               (isinstance(d.relation, Member) or isinstance(d.relation, Subtype)) and d.relation.entity1 == entity]

        local_decl = self.query_local(e1=entity, rel=relation)
        local_rel_name = [d.relation.name for d in local_decl]

        return [item for sublist in pds for item in sublist if not item.relation.name in local_rel_name] + local_decl

    def query_down(self, entity, relation=None, skip_1st=True):

        descendents = [self.query_down(d.relation.entity1, relation, False) for d in self.declarations if
                       d.relation.entity2 == entity and
                       (isinstance(d.relation, Member) or isinstance(d.relation, Subtype))]

        if skip_1st:
            return [item for sublist in descendents for item in sublist]

        return [item for sublist in descendents for item in sublist] + self.query_local(e1=entity, rel=relation)

    def query_induce(self, entity, relation):
        suc = self.query_down(entity, relation)

        c = Counter([s.relation.entity2 for s in suc])

        for a, v in c.most_common(1):
            return a

    def query_local_assoc(self, entity, relation):
        local_declare = self.query_local(e1=entity, rel=relation)

        if not local_declare:
            return []

        if isinstance(local_declare[0].relation, AssocNum):
            return sum([l.relation.entity2 for l in local_declare]) / len(local_declare)

        elif isinstance(local_declare[0].relation, AssocOne):
            c = Counter([l.relation.entity2 for l in local_declare])
            val, count = c.most_common(1)[0]
            return val, count / len(local_declare)

        elif isinstance(local_declare[0].relation, Association):

            c = Counter([l.relation.entity2 for l in local_declare])
            l = []
            sfreq = 0

            for val, count in c.most_common():
                l.append((val, count/len(local_declare)))
                sfreq += count/len(local_declare)
                if sfreq > 0.75:
                    break

            return l

    def query_assoc_value(self, entity, relation):
        local_declare = self.query_local(e1=entity, rel=relation)

        c = Counter([l.relation.entity2 for l in local_declare])

        if len(c.most_common())==len(c):
            return c
        else:

            def L():
                pass
            def H():
                pass



# Funcao auxiliar para converter para cadeias de caracteres
# listas cujos elementos sejam convertiveis para
# cadeias de caracteres
def my_list2string(list):
    if list == []:
        return "[]"
    s = "[ " + str(list[0])
    for i in range(1, len(list)):
        s += ", " + str(list[i])
    return s + " ]"
