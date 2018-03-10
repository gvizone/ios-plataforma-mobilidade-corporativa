import Foundation



//Funções

func sum(a: Int, b: Int) -> Int {
 
   return a+b

}

func divide(a: Int, b: Int) -> Int {

    return a/b

}

func multiply(a: Int, b: Int) -> Int {

    return a*b

}

func subtract(a: Int, b: Int) -> Int {

    return a-b

}


//Usando funções como retorno de funções

func getOperation(named operation: String) -> (Int, Int) -> Int {

    switch operation {

	case "soma":

	return sum

	case "subtracao":

                return subtract

                case "multiplicacao":

    	return multiply
    
	default:
        
	return divide
    
     }

}

var operation = getOperation(named: "divisao")
operation(20, 6)


//Usando funções como parâmetro de funções

typealias Operation = (Int, Int) -> Int


func applyOperation(_ a: Int, _ b: Int, operation: Operation) -> Int {

    return operation(a, b)

}

let result = applyOperation(20, 6, operation: sum)

print(result)



//Sintaxe de uma função

/*

func nome(para: Tipo, param2: Tipo) -> TipoRetorno {

    //código
 
    
    return TipoRetorno
 
}

*/


//Sintaxe de uma Closure

/*

 {(para: Tipo, param2: Tipo) -> TipoRetorno in
    
//código
 
    
return TipoRetorno
 
}
 

*/


applyOperation(20, 3, operation: {(x: Int, y: Int) -> Int in
    return x % y
})


applyOperation(20, 3, operation: {x, y -> Int in
    return x % y
})


applyOperation(20, 3, operation: {x, y in
    return x % y
})


applyOperation(20, 3, operation: {
    
	return $0 % $1
})


applyOperation(20, 3, operation: {
	return $0 % $1})


applyOperation(20, 3, operation: {$0 % $1})


applyOperation(20, 3){$0 % $1}



var names: [String] = [
    "Frederico",
    "Paula",
    "Pedro",
    "Joaquim",
    "Caroline",
    "Maria",
    "Ana"
]


//Map

var uppercasedNames = names.map{$0.uppercased()}

print(uppercasedNames)


//
var names5 = names.filter{$0.count<=5}

print(names5)


//
var sortedNames = names.sorted(by: >)

print(sortedNames)



//Generics

func swapInts<T>(a: inout T, b: inout T) {
    
	let temp = a
    
	a = b
    
	b = temp

}


var x = "10.0"

var y = "20.0"

swapInts(a: &x, b: &y)

x

y








