//
//  InputProfileViewController.swift
//  PostTestLoginProfile
//
//  Created by Muhammad Hilmy Fauzi on 23/10/17.
//  Copyright © 2017 Hilmy Corp. All rights reserved.
//

import UIKit

class InputProfileViewController: UIViewController {

    @IBOutlet weak var etUsername: UITextField!
    @IBOutlet weak var etEmail: UITextField!
    @IBOutlet weak var etPassword: UITextField!
    @IBOutlet weak var etSchool: UITextField!
    @IBOutlet weak var etClass: UITextField!
    @IBOutlet weak var etAge: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //check what segue with name passData is available or not
        if(segue.identifier == "passData"){
            let sendData = segue.destination as! DataInputedViewController
            sendData.username = etUsername.text!
            //send email data
            sendData.email = etEmail.text!
            //send password data
            sendData.password = etPassword.text!
            sendData.school = etSchool.text!
            //send email data
            sendData.classs = etClass.text!
            //send password data
            sendData.age = etAge.text!
        }
    }
    @IBAction func btnSubmit(_ sender: Any) {
        if (etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == "")&&(etAge.text == "") {
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == ""){
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if(etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "") && (etAge.text == ""){
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == ""){
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etUsername.text == "")&&(etEmail.text == "")&&(etPassword.text == ""){
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else if (etEmail.text == "")&&(etPassword.text == "")&&(etSchool.text == "")&&(etClass.text == "")&&(etAge.text == ""){
            let alertController = UIAlertController(title: "Warning",
                                                    message: "Input Profile Can't Be Empty", preferredStyle : .alert)
            alertController.addAction(UIAlertAction(title: "OK",
                                                    style: .default,handler: nil))
            present(alertController, animated: true, completion: nil)
        }else{
            func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                //check what segue with name passData is available or not
                if(segue.identifier == "passData"){
                    let sendData = segue.destination as! DataInputedViewController
                    
                    sendData.username = etUsername.text!
                    //send email data
                    sendData.email = etEmail.text!
                    //send password data
                    sendData.password = etPassword.text!
                    sendData.school = etSchool.text!
                    //send email data
                    sendData.classs = etClass.text!
                    //send password data
                    sendData.age = etAge.text!
                }
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
