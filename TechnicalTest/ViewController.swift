//
//  ViewController.swift
//  TechnicalTest
//
//  Created by NyobainXcode on 06/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var TFusername: UITextField!
    
    @IBOutlet weak var TFpassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func BTNlogin(_ sender: Any) {
        //Validate TextField
        let username = TFusername.text
        let password = TFpassword.text
        let adminUser = "alfagift-admin"
        let adminPass = "asdf"
        
        if(username!.isEmpty || password!.isEmpty){
            popUpMsg(title: "Error", message: "Username & password cannot be empty")
        }
        
        if(username != adminUser){
            popUpMsg(title: "Error", message: "Username or Password is incorect")
        }
        
        if(password != adminPass){
            popUpMsg(title: "Error", message: "Username or Password is incorect")
        }
        
        if let nextPage = storyboard?.instantiateViewController(identifier: "listStudents"){
            var studentPage = nextPage as! ListStudentsViewController
            studentPage.usrname = adminUser
            
            navigationController?.setViewControllers([studentPage], animated: true)
        }
        
//        if let nextView = storyboard?.instantiateViewController(identifier: "listStudents"){
//            navigationController?.setViewControllers([nextView], animated: true)
//        }
        
        
    }
    
    func popUpMsg(title: String, message: String ){
        //Function Pop Up Message
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "Okay", style: .cancel, handler: nil)
        
        alertController.addAction(noAction)

        present(alertController, animated: true, completion: nil)
    }
    
}

