//
//  CreateAccount_ViewController.swift
//  EnTest
//
//  Created by Jennifer Luong on 12/4/17.
//  Copyright © 2017 Cheat Codes. All rights reserved.
//

import UIKit

class CreateAccount_ViewController: UIViewController {
    
    let urlPath = URL(string:"https://en-route.000webhostapp.com/user.php")
    
    @IBOutlet weak var textFieldFirstName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPhone: UITextField!
    @IBOutlet weak var textFieldUsername: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!

    @IBAction func createAccount(sender: UIButton) {
        //creating NSMutableURLRequest
        let request = NSMutableURLRequest(url: urlPath!)
        
        //setting the method to post
        request.httpMethod = "POST"
        
        //getting values from text fields
        let firstName = textFieldFirstName.text
        let lastName = textFieldFirstName.text
        let email = textFieldEmail.text
        let phone = textFieldPhone.text
        let username = textFieldUsername.text
        let password = textFieldPassword.text

        //creating the post parameter by concatenating the keys and values from text field
        let postParameters = "FirstName="+firstName!+"LastName="+lastName!+"Email"+email!+"Phone"+phone!+"Username"+username!+"Password"+password!;
        
        //adding the parameters to request body
        request.httpBody = postParameters.data(using:String.Encoding.utf8)
        
        
        //creating a task to send the post request
        let task = URLSession.shared.dataTask(with: request as URLRequest){
            data, response, error in
            
            if error != nil{
                print("error is \(error)")
                return;
            }
            
            //parsing the response
            do {
                //converting resonse to NSDictionary
                let myJSON =  try JSONSerialization.jsonObject(with:data!,options:.mutableContainers)as? NSDictionary
                
                //parsing the json
                if let parseJSON = myJSON {
                    
                    //creating a string
                    var msg : String!
                    
                    //getting the json response
                    msg = parseJSON["message"] as! String?
                    
                    //printing the response
                    print(msg)
                    
                }
            } catch {
                print(error)
            }
            
        }
        //executing the task
        task.resume()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
