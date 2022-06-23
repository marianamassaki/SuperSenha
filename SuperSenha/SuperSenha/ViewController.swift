//
//  ViewController.swift
//  SuperSenha
//
//  Created by Mariana Eri Massaki on 23/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPassword: UITextField!
    @IBOutlet weak var tfNumberOfCharacteres: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordViewController
        if let numberOfPasswords = Int(tfTotalPassword.text!) {
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacteres.text!) {
            passwordsViewController.numberOfCharacters = numberOfCharacters
        }
        
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacters.isOn
        
    }


}

