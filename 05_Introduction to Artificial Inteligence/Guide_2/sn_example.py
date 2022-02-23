from semantic_network import *

a = Association('socrates','professor','filosofia')
s = Subtype('homem','mamifero')
m = Member('socrates','homem')

da = Declaration('descartes',a)
ds = Declaration('darwin',s)
dm = Declaration('descartes',m)

z = SemanticNetwork()
z.insert(da)
z.insert(ds)
z.insert(dm)
z.insert(Declaration('darwin',Association('mamifero','mamar','sim')))
z.insert(Declaration('darwin',Association('homem','gosta','carne')))

# novas declaracoes

z.insert(Declaration('darwin',Subtype('mamifero','vertebrado')))
z.insert(Declaration('descartes', Member('aristoteles','homem')))

b = Association('socrates','professor','matematica')
z.insert(Declaration('descartes',b))
z.insert(Declaration('simao',b))
z.insert(Declaration('simoes',b))

z.insert(Declaration('descartes', Member('platao','homem')))

e = Association('platao','professor','filosofia')
z.insert(Declaration('descartes',e))
z.insert(Declaration('simao',e))

z.insert(Declaration('descartes',Association('mamifero','altura',1.2)))
z.insert(Declaration('descartes',Association('homem','altura',1.75)))
z.insert(Declaration('simao',Association('homem','altura',1.85)))
z.insert(Declaration('darwin',Association('homem','altura',1.75)))

z.insert(Declaration('descartes', Association('socrates','peso',80)))
z.insert(Declaration('darwin', Association('socrates','peso',75)))
z.insert(Declaration('darwin', Association('platao','peso',75)))


z.insert(Declaration('damasio', Association('filosofo','gosta','filosofia')))
z.insert(Declaration('damasio', Member('socrates','filosofo')))


# Extra - descomentar as restantes declaracoes para o exercicio II.2.16

z.insert(Declaration('descartes', AssocNum('socrates','pulsacao',51)))
z.insert(Declaration('darwin', AssocNum('socrates','pulsacao',61)))
z.insert(Declaration('darwin', AssocNum('platao','pulsacao',65)))

z.insert(Declaration('descartes',AssocNum('homem','temperatura',36.8)))
z.insert(Declaration('simao',AssocNum('homem','temperatura',37.0)))
z.insert(Declaration('darwin',AssocNum('homem','temperatura',37.1)))
z.insert(Declaration('descartes',AssocNum('mamifero','temperatura',39.0)))

z.insert(Declaration('simao',Association('homem','gosta','carne')))
z.insert(Declaration('darwin',Association('homem','gosta','peixe')))
z.insert(Declaration('simao',Association('homem','gosta','peixe')))
z.insert(Declaration('simao',Association('homem','gosta','couves')))

z.insert(Declaration('damasio', AssocOne('socrates','pai','sofronisco')))
z.insert(Declaration('darwin', AssocOne('socrates','pai','pericles')))
z.insert(Declaration('descartes', AssocOne('socrates','pai','sofronisco')))

print(1, z.list_associations())
print(2, z.entity_list())
print(3, z.user_list())
print(4, z.type_list())
print(5, z.local_associations('homem'))
print(6, z.list_relation_by_user('damasio'))
print(7, z.list_association_by_user('damasio'))
print(8, z.list_local_association_by_user('socrates'))
print(9, z.predecessor('vertebrado', 'socrates'))
print(10, z.predecessor_path('vertebrado', 'socrates'))
print('11.a1', z.query('socrates', 'altura'))
print('11.a2', z.show_query_result())
print('11.b1', z.query2('homem', 'mamar'))
print('11.b2', z.show_query_result())
print('12', z.query_cancel('socrates', 'altura'))
print('13', z.query_down('mamifero', 'altura'))
print('14', z.query_induce('mamifero','altura'))
print('15', z.query_local_assoc('socrates', 'pai'))
print('15', z.query_local_assoc('socrates', 'pulsacao'))
print('15', z.query_local_assoc('homem', 'gosta'))