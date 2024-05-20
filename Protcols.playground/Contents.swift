import Foundation
protocol CanBreathe {
    func breathe()
}
struct Animal: CanBreathe {
    func breathe() {
        "Animal breathing..."
    }
}
struct Person: CanBreathe {
    func breathe() {
        "Person breathing..."
    }
}

let dog = Animal()
dog.breathe()
let foo = Person()
foo.breathe()
protocol jump {
    func jump()
}
extension jump {
    func jump(){
        "Jumping..."
    }
}
