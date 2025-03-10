//
//  DetailsViewController.swift
//  MidTermExamTarunTehlyani
//
//  Created by Default User on 2/13/25.
//

import UIKit

class DetailsViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var tfMake : UITextField!
    @IBOutlet var tfModel : UITextField!
    @IBOutlet var tfYear : UITextField!
    @IBOutlet var tfKms : UITextField!
    @IBOutlet var sgColor : UISegmentedControl!

    @IBAction func updateLabels(sender : UIButton)
    {
        let alert = UIAlertController(title: "Confirm Car Details Submission", message: "Do you wish to proceed?", preferredStyle: .alert)
        
        let noAction = UIAlertAction(title: "No", style: .cancel)
        
        let yesAction = UIAlertAction(title: "Yes", style: .default) { ac in
            self.doTheUpdate()
            self.dismiss(animated: true)
        }
        
        alert.addAction(yesAction)
        alert.addAction(noAction)
        
        present(alert, animated: true)
    }
    
    func doTheUpdate(){
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.data.savedMake = tfMake.text
        appDelegate.data.savedModel = tfModel.text
        appDelegate.data.savedYear = tfYear.text
        appDelegate.data.savedKms = tfKms.text
        
        if sgColor.selectedSegmentIndex == 0
        {
            appDelegate.data.SavedColor = "Red"
        }
        else if sgColor.selectedSegmentIndex == 1
        {
            appDelegate.data.SavedColor = "Blue"
        }
        else if sgColor.selectedSegmentIndex == 2
        {
            appDelegate.data.SavedColor = "White"
        }
        else if sgColor.selectedSegmentIndex == 3
        {
            appDelegate.data.SavedColor = "Black"
        }
        else
        {
            appDelegate.data.SavedColor = "Yellow"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
