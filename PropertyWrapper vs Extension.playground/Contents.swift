import UIKit
// Custom Property Wrapper
@propertyWrapper
struct Email<Value: StringProtocol> {
    var value: Value?
    init(wrappedValue value: Value?) {
        self.value = value
    }
    var wrappedValue: Value? {
        get {
            return validate(email: value) ? value : nil
        }
        set {
            value = newValue
        }
    }
    
    private func validate(email: Value?) -> Bool {
        guard let email = email else { return false }
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
}

// Extension
extension String {
    func validateEmail() -> Bool {
        let emailRegEx = "^.+@([A-Za-z0-9-]+\\.)+[A-Za-z]{2}[A-Za-z]*$"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
//
class Login{
    @Email var email : String?  =  "abc@gmail.com"
    var otherEmail : String = "xyz@gmail.com"
    func printEmail(){
        
        // Using Property Wrapper
        
        if let email = email{
              debugPrint("\(email) is valid email")
        }
      
        // Using extension
        let value =  otherEmail.validateEmail()
        if value{
            debugPrint("\(otherEmail) is valid email")
        }else{
            debugPrint("\(otherEmail) is invalid email")
        }
        
    }
}
var obj =  Login()
obj.printEmail()
