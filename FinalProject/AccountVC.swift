//
//  AccountVC.swift
//  FinalProject
//
//  Created by DPI Student 052 on 7/20/23.
//

import UIKit
import SwiftUI

class AccountVC: UIViewController {
    
    @IBOutlet var editButton: UIButton!
    @IBOutlet var bioLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var gradeLabel: UILabel!
    @IBOutlet var interest: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    @IBAction func editButtonTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "EditVC") as! EditVC
        selectionVC.selectionDelegate = self //connects EditVC info
        present(selectionVC, animated: true, completion: nil) //opens Edit VC
    }
    
    var linkedIn: String = " "
    
    @IBAction func linkFunction(_ sender: Any) {
        UIApplication.shared.open(URL(string: linkedIn)!)
    }
}

extension AccountVC: saveDelegate{
    func didEdit(textFieldBio: UITextField, textFieldName: UITextField, linkFieldName: UITextField) {
        bioLabel.text = textFieldBio.text //updates the student's bio
        nameLabel.text = textFieldName.text //updates the student's name
        linkedIn = linkFieldName.text! //updates the link & force unwraps
    }
    
    func didChoose(buttonGrade: String) {
        gradeLabel.text = buttonGrade //updates the student's grade
    }
    
    func didTag(buttonTag: String) {
        interest.text = buttonTag //updates the student's key interest
    }
}

