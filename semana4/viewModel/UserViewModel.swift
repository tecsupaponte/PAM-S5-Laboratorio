 class UserViewModel {
    
    var users: [User] = [User]()
    
    func getUsers() -> [User] {
        return users
    }
    
    func createUser(user: User) {
        users.append(user)
    }
}
