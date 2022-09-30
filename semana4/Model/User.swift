import Foundation

struct User {
    var name: String
    var lastname: String
    var birthday: String
    var phonenumber: String
    var address: String
    
    init(name: String, lastname: String, birthday: String, phonenumber: String, address: String) {
        self.name = name
        self.lastname = lastname
        self.birthday = birthday
        self.phonenumber = phonenumber
        self.address = address
    }
}
