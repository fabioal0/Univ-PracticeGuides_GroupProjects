
from constraintsearch import *


def amigos_constraint(a1, t1, a2, t2):
    c1, b1 = t1
    c2, b2 = t2

    if a1 in[c1,b1] or a2 in [c2,b2]:
        return False

    if c1 == b1 or c2 == b2:
        return False

    if c1 == c2 or b1 == b2:
        return False

    if c1 == 'Claudio' and b1 != 'Bernardo':
        return False

    return c1 != c2


def make_constraint_graph(amigos):
    return {(X, Y): amigos_constraint for X in amigos for Y in amigos if X != Y}


def make_domains(amigos):
    return {amigo:[(chapeu,bicicleta) for chapeu in amigos for bicicleta in amigos] for amigo in amigos }


amigos = ['Andre', 'Bernardo', 'Claudio']

cs = ConstraintSearch(make_domains(amigos), make_constraint_graph(amigos))

print(cs.search())


