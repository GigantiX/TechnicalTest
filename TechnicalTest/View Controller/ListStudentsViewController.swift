//
//  ListStudentsViewController.swift
//  TechnicalTest
//
//  Created by NyobainXcode on 06/01/24.
//

import UIKit

class ListStudentsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var arr = [StudentsModel]()
    var usrname: String?
    
    @IBOutlet var myVIew: UIView!
    
    
    @IBAction func onLogout(_ sender: Any) {
        
        let alertController = UIAlertController(title: "Logout", message: "Are you sure?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Logout", style: .default) { (action) in
            self.toLoginPage()
                
        }
        
        let noAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(okAction)
        alertController.addAction(noAction)

        present(alertController, animated: true, completion: nil)
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let people = arr[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! StudentsTableViewCell
        
        cell.VCname.text = people.name
        cell.VCaddress.text = people.address
        cell.VCimage.image = UIImage(named: people.picture)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 105
    }
    func toLoginPage (){
        if let nextView = storyboard?.instantiateViewController(identifier: "loginPage"){
            navigationController?.setViewControllers([nextView], animated: true)
        }
    }
    
    @IBOutlet weak var TVstudents: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataStudents()
        TVstudents.dataSource = self
        TVstudents.delegate = self
        
        if arr.count % 2 == 0 {
            arr.append(StudentsModel(name: usrname!, address: "N/A", picture: "pic4"))
        } else {
            myVIew.backgroundColor = UIColor.red
        }

    }
    
    func dataStudents(){
        arr.append(StudentsModel(name: "Michael Brown", address: "123 Main St, Anytown, CA 12345", picture: "pic1"))
        arr.append(StudentsModel(name: "Jane Smith", address: "456 Oak Ave, Springfield, IL 67890", picture: "pic2"))
        arr.append(StudentsModel(name: "Robert Johnson", address: "789 Pine Rd, Lakeside, TX 23456", picture: "pic3"))
        arr.append(StudentsModel(name: "John Doe", address: "101 Elm St, Riverdale, NY 34567", picture: "pic4"))
        arr.append(StudentsModel(name: "Emily White", address: "202 Maple Ave, Hilltop, FL 45678", picture: "pic5"))
        arr.append(StudentsModel(name: "James Miller", address: "303 Cedar Blvd, Meadowville, OH 56789", picture: "pic6"))
        arr.append(StudentsModel(name: "William Taylor", address: "404 Birch Ln, Woodsville, AZ 67890", picture: "pic7"))
        arr.append(StudentsModel(name: "Olivia Wilson", address: "505 Oak Dr, Sunnyside, GA 78901", picture: "pic8"))
        arr.append(StudentsModel(name: "Sarah Davis", address: "606 Pine Ct, Lakeside, CA 12345", picture: "pic9"))
        arr.append(StudentsModel(name: "Ethan Anderson", address: "707 Maple Rd, Hilltop, TX 23456", picture: "pic10"))
    }

    

}
