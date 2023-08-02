//
//  EditVC.swift
//  FinalProject
//
//  Created by DPI Student 052 on 7/20/23.
//

import UIKit
import SwiftUI

protocol saveDelegate{
    func didEdit(textFieldBio: UITextField, textFieldName: UITextField, linkFieldName: UITextField)  //helps move text edits from EditVC to AccountVC. what is inputted is what should show on the next screen
    func didChoose(buttonGrade: String) //function for dropdown menu
    func didTag(buttonTag: String) //function for topic interest
    
}

class EditVC: UIViewController {
    //text fields
    @IBOutlet var bioField: UITextField!
    @IBOutlet var nameField: UITextField!
    @IBOutlet var linkField: UITextField!
    
    //interest buttons
    @IBOutlet var STEM: UIButton!
    @IBOutlet var Arts: UIButton!
    @IBOutlet var socialStudies: UIButton!
    @IBOutlet var Sports: UIButton!
    @IBOutlet var Writing: UIButton!
    
    
    @IBOutlet var gradYearButton: UIButton! //dropdown
    
    var selectionDelegate: saveDelegate! //holds edits added
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveButtonTapped(_ sender: UIButton) {
        selectionDelegate.didEdit(textFieldBio: bioField, textFieldName: nameField, linkFieldName: linkField) //connects the text field
        dismiss(animated: true, completion: nil) //collapses the VC
    }
    
    //for grad year dropdown
    @IBAction func twentyOneTapped(_ sender: UIButton){
        selectionDelegate.didChoose(buttonGrade: "2021")
    }
    @IBAction func twentyTwoTapped(_ sender: UIButton){
        selectionDelegate.didChoose(buttonGrade: "2022")
    }
    @IBAction func twentyThreeTapped(_ sender: UIButton){
        selectionDelegate.didChoose(buttonGrade: "2023")
    }
    @IBAction func twentyFourTapped(_ sender: UIButton){
        selectionDelegate.didChoose(buttonGrade: "2024")
    }
    @IBAction func twentyFiveTapped(_ sender: UIButton){
        selectionDelegate.didChoose(buttonGrade: "2025")
    }
    
    
    @IBAction func STEMButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTag(buttonTag: "STEM")
        Arts.isEnabled = false  //disables all other buttons after one is picked
        socialStudies.isEnabled = false
        Sports.isEnabled = false
        Writing.isEnabled = false
    }
    
    @IBAction func artsButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTag(buttonTag: "Arts")
        STEM.isEnabled = false
        socialStudies.isEnabled = false
        Sports.isEnabled = false
        Writing.isEnabled = false
    }
    
    @IBAction func ssButtonTapped(_ sender: Any) {
        selectionDelegate.didTag(buttonTag: "Social Studies")
        STEM.isEnabled = false
        Arts.isEnabled = false
        Sports.isEnabled = false
        Writing.isEnabled = false
    }
    
    @IBAction func sportsButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTag(buttonTag: "Sports")
        STEM.isEnabled = false
        socialStudies.isEnabled = false
        Arts.isEnabled = false
        Writing.isEnabled = false
    }
    
    @IBAction func writingButtonTapped(_ sender: UIButton) {
        selectionDelegate.didTag(buttonTag: "Writing")
        STEM.isEnabled = false
        Arts.isEnabled = false
        Sports.isEnabled = false
        socialStudies.isEnabled = false
    }
}
