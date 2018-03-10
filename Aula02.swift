import Foundation
 
//Comentario de uma unica linha
 
/*
 
 Comentario
 de
 varias linhas
 
 */
 
//Criar uma variavel
var name2: String = "Leandrinho"
//Por inferencia, nao eh necessario falar qual o tipo da variavel, o swift entende
var name = "Leandro Coelho de Menezes"
name = "Leandro"
print(name)
 
var 🐶 = "Pedrinho"
print(🐶)
 
 d
//Criar uma constante
let favoriteMobileSystem = "iOS"
print(favoriteMobileSystem)
 
 
//Interpolacao, pegando o valor da variavel em uma String Toda variavel tem uma Description, ou seja, uma String por baixo dos panos
var idade = 21
var message = "Nome: \(name) \nidade: \(idade)"
print(message)
 
 
//Bool, Double, Float, Int, String, Character
 
 
//Inteiros
var id: Int = 755
var age: Int8 = 48
 
print(age)
 
 
//Booleanos
var isAtivo: Bool = false
 
//String
var String = "Teste"
 
//Caracter
var gender: Character = "M"
 
 
//Float e Double
let pi = 3.1415
 
 
var stg = """
testando
 
uma vez
 
só
"""
 
 
print(stg)
 
 
let address = "Rua Botupuca, 232, 018293-292, SP"
print(address)
 
 
//Usando uma tupla
let address2 = ("Rua Botupuca", 232, "293023-102", "SP")
print("Moro no nr \(address2.1)")
 
//Nomeando a tupla
let address3: (rua: String, numero: Int, cep:String, uf:String) = ("Rua Botupuca", 232, "293023-102", "SP")
print("Moro no nr \(address3.uf)")
 
 
let aluno: (firstName: String, lastName: String, age: Int, course: String, grade: Int) = ("Leandro", "Menezes", 21, "Desenvolvimento de iOS", 10)
 
print("Meu nome eh: \(aluno.firstName) tenho \(aluno.age) anos e tirei a nota \(aluno.grade) na materia \(aluno.course) por que estudei muito no carnavel")
 
print("**********************************************************************************")
 
 
//Optionals eh o cara que nao precisa ser inicializado em primeiro instante
var cnh: String? = nil
cnh = "12312"
 
print("Minha cnh eh \(cnh!)")
 
//Option Binding
if let outraVariavel = cnh {
    print("A minha cnh eh \(outraVariavel)")
}else {
    print("Essa pessoa nao tem cnh")
}
 
//Nil Coalescing Operator (Operador de Coalescencia Nula)
let myCNH: String = cnh ?? "qualquer outra coisa"
 
print(cnh)
 
 
 

