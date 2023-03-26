//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//Created by Elif Tum on 26.03.2023.
import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    var message: [Message] = [
    Message(sender: "1@2", body: "Hello")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        title = Constansts.appName
        navigationItem.hidesBackButton = true
        
        tableView.register(UINib(nibName: Constansts.cellNibName, bundle: nil), forCellReuseIdentifier: Constansts.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    

    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        do{
            try Auth.auth().signOut()
            navigationController?.popToRootViewController(animated: true)
            
        }catch  let signOutError as NSError{
                    print("Error signing out: %@", signOutError)
        }
    }
}

extension ChatViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return message.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Constansts.cellIdentifier, for: indexPath)
        as! MessageCell
        cell.label.text = message[indexPath.row].body
        return cell
    }
    
    
}

