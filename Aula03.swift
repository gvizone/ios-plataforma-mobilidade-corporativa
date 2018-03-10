import Foundation


//Operadores

//+, -, *, /, =, %, !, >, < , >=, <=, &&,


//Colecoes

//Estrutura de dados que representa um conjunto de elementos

//Exemplos: Array



//Array: Colecoes ordenada de elementos de MESMO TIPO

var invites: [String] = [

 "Jaqueline",

 "Paula",

 "Thiago",

 "Camila",

 "Raquel"

]


//Adiciona no ARRAY

invites.append("Caroline")


//Remove um unico elemento do ARRAY (EX: Paula)

invites.remove(at: 1)


//Buscar o elemento

if let index = invites.index(of: "Camila"){

invites.remove(at: index)

}


//* Estudar OPTIONALS


//Verificar se o elemento esta dentro ou fora do Array

invites.contains("Raquel")


//Acessar o conteudo de um Array

invites[3]


// ----------------------------------


//Dicionarios: Colecao nao ordenada de elementos de mesmo tipo, acessiveis atraves de uma chave

var states = [

    "SP": "Sao Paulo",

    "MG": "Minas Gerais",

    "PA":"Para"

]



//Para acessar os elementos de um dicionario precisa fazer um if e let

//Pode usar underline no lugar de state, variavel nao sera utilizada


if let state = states["SP"]{

    print(state)

} else {

print("RJ nao esta cadastrado")

}




//Como adicionar um novo elemento a um dicionario

states["RJ"] = "Rio de Janeiro"


//Como remover um elemento a um dicionario

states["RJ"] = nil


states.count

invites.count

"FIAP School".count


//FOR IN, WHILE (RPEAT WHILE)

for invite in invites{

print("\(invite) foi convidado para a festa")

}


for state in states{

    print("A sigla \(state.key) representa o estado \(state.value)")

}



//Revisao de Tuplas

let address: (street: String, number: Int, zipCode:String) = ("Av. 1", 1200, "05135-300")


//Precisa obrigatoriamente de todas as posicoes

//se nao quiser algum elemento usa o _

var (street, number,zipCode) = address

//var (street, _ ,zipCode) = address




//Range (Half Open Range)

for i in 0..<invites.count{

print("O convidado \(i+1) é \(invites[i])")

}


var j = 0

while j < invites.count{

    print("O convidado \(j+1) é \(invites[j])")

    j+=1

}


//Pode ser criar os proprios operadores, exemplo >-<

//Operadores ternarios



//Operador unario prefix

prefix operator >-

prefix func  >- (rhs: Int) -> Int{

return rhs*rhs

}


>-4




//Operador unario postfix

postfix operator -<

postfix func  -< (lhs: Int) -> Int{

    return lhs*lhs*lhs

}


2-<


//Operador binario infix

infix operator >-<

func  >-< (lhs: Int, rhs: Int) -> String{

    return "\(lhs)\(rhs)"

}


18>-<20


//Funcao ramdom

arc4random_uniform(10)

Int(arc4random_uniform(UInt32(10))+1) // ate 10


//Exercicio ainda nao finalizado

infix operator >-<*

func  >-<* (lhs: Int, rhs: Int) -> Int

return (Int(arc4random_uniform(rhs)+1)

}
