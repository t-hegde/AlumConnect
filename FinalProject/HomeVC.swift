//
//  HomeVC.swift
//  FinalProject
//
//  Created by DPI Student 052 on 7/20/23.
//

import UIKit

class HomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func helpButton(_ sender: Any) {
        let helpVC = storyboard?.instantiateViewController(withIdentifier: "HelpVC") as! HelpVC
        present(helpVC, animated: true, completion: nil) //opens Help VC
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
