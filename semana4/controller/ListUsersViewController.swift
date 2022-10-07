import UIKit

class ListUsersViewController: UIViewController {
    
    let userViewModel: UserViewModel = UserViewModel()
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var users: [User] = [
        User(
            name: "Javier",
            lastname: "Aponte",
            birthday: "28-11-00",
            phonenumber: "3333",
            address: "Calle Falsa 123"
        ),
        User(
            name: "Alfonso",
            lastname: "Spínola",
            birthday: "12-07-00",
            phonenumber: "1111",
            address: "Calle Falsa 125"
        ),
        User(
            name: "Augusto",
            lastname: "Cipriani",
            birthday: "12-07-00",
            phonenumber: "1111",
            address: "Calle Falsa 127"
        ),
        User(
            name: "Alejandra",
            lastname: "Torres",
            birthday: "12-07-00",
            phonenumber: "1111",
            address: "Calle Falsa 129"
        ),
        User(
            name: "Jorge",
            lastname: "Echevarría",
            birthday: "12-07-00",
            phonenumber: "1111",
            address: "Calle Falsa 131"
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(userViewModel.getUsers())
        setUpTable()
    }
    
    func setUpTable() {
        tableView.delegate = self
        tableView.dataSource = self
    }

}

extension ListUsersViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let model = users[indexPath.row]
            
        var listContentConfiguration = UIListContentConfiguration.cell()
        listContentConfiguration.text = model.name
        listContentConfiguration.secondaryText = model.address
        listContentConfiguration.image = UIImage(systemName: "person")
        
        cell.contentConfiguration = listContentConfiguration
    
        return cell
    }
    
}
