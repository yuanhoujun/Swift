
// 基本用法
let optionalValue:String? = "abc"
print(optionalValue!)

// 声明一个不包含任何值的Optional变量
var optValue:String? = nil

// 使用Optional Value之前要先判断其中是否有值
var optValue1:Int?

if optValue1 != nil {
    print("其中包含值:\(optValue1!)")
} else {
    print("其中不包含任何值！")
}

// Optional Binding
if let actualValue = optValue1 {
    print("其中包含值:\(actualValue)")
} else {
    print("其中不包含任何值！")
}

// Implicitly Optional Value
let implicitlyOptionalValue:Int! = 33
print(implicitlyOptionalValue)

// Optional Value的本质
//let optValue2:Int? = 3 // 等同于
let optValue2:Optional<Int> = 3

class Dog {
    var name:String? = "Lucy"
}

class Person {
    var dog:Dog?
}

let person:Person = Person()
print(person.dog?.name)