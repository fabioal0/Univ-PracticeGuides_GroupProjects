
from constraintsearch import *


def mapa_constraint(r1,c1,r2,c2):
    return c1!=c2

def make_constraint_graph(mapa):
    return { (X,Y):mapa_constraint for X in mapa for Y in mapa[X] if X!=Y }


def make_domains(o_map, o_colors):
    return {r: o_colors for r in o_map}

map1 = {'A': 'BDE',
        'B': 'ACE',
        'C': 'BDE',
        'D': 'ACE',
        'E': 'ABCD'
        }

colors = ['C_R', 'C_B', 'C_G', 'C_Y', 'C_W']

cs = ConstraintSearch(make_domains(map1,colors),make_constraint_graph(map1))

print(cs.search())
print(cs.calls)


