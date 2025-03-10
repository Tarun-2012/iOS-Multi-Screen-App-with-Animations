//
//  SubmittedPageViewController.swift
//  MidTermExamTarunTehlyani
//
//  Created by Default User on 2/13/25.
//

import UIKit

class SubmittedPageViewController: UIViewController {

    @IBAction func unwindToInfo(sender : UIStoryboardSegue)
    {
    
    }
    
    @IBOutlet var lbMake : UILabel!
    @IBOutlet var lbModel : UILabel!
    @IBOutlet var lbYear : UILabel!
    @IBOutlet var lbKms : UILabel!
    @IBOutlet var lbColor : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        lbMake.text = appDelegate.data.savedMake
        lbModel.text = appDelegate.data.savedModel
        lbYear.text = appDelegate.data.savedYear
        lbKms.text = appDelegate.data.savedKms
        lbColor.text = appDelegate.data.SavedColor

        // Do any additional setup after loading the view.
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
