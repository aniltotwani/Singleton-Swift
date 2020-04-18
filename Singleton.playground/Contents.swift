import UIKit


//1
// Singleton class having only one single object throughout the application

// We have a class Singleton with init method. by default access identifier of init is public.
// Now we make two different objects obj1 & obj2 for the same class . Since it is opposite to singleton concept. So we can say right now it is not singleton class
class NonSingleton {
    
    init(){}
    
}

let obj1 = NonSingleton()
let obj2 = NonSingleton()

// We can check obj1 & obj2 also by comparing these two objects
// We can easily find out that both objects are different

if(obj1 === obj2){
    print("Both are same")
}else{
    print("Both are different")
}


// 2
// Now to make this class singeton we have to put private access to init method so we are not able to make two different objects of same class

class Singleton{
    
    private init(){}
    
    static let shared = Singleton()
    
}

// Since it is now private, we will get erros while making two different objects of same class. By uncomment line 38 and 39 we can see the errors.
 // let obj1 =  Singleton1()
 // let obj2 = Singleton1()

// We can also compair objects by checking they are now same or not

let objNew1 = Singleton.shared
let objNew2 = Singleton.shared


if(objNew1 === objNew2){
    print("both are same")
}else{
    print("both are different")
}

