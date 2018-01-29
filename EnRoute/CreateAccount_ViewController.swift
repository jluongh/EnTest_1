//
//  CreateAccount_ViewController.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/4/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit


//import Alamofire
import UIKit

class CreateAccount_ViewController: UIViewController {

    let URL_USER_REGISTER = URL(string:"https://en-route.000webhostapp.com/register.php")
    
    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPhone: UITextField!
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!

   // @IBAction func createAccount(sender: UIButton) {
        
        //creating NSMutableURLRequest
        /*
        let parameters: Parameters=[
            "Username":textFieldUsername.text!,
            "Password":textFieldPassword!,
            "FirstName":textFieldFirstName!,
            "LastName":textFieldLastName!,
            "Email":textFieldEmail!,
            "Phone":textFieldPhone!
            ]
         */
        /*
         //Sending http post request
         Alamofire.request(URL_USER_REGISTER, method: .post, parameters: parameters).responseJSON
         {
            response in
            //printing response
            print(response)
         
             //getting the json value from the server
                if let result = response.result.value {
         
                    //converting it as NSDictionary
                    let jsonData = result as! NSDictionary
                    
                    //displaying the message in label
                    self.labelMessage.text = jsonData.value(forKey: "message") as! String?
            }
         }
         */
  //  }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
