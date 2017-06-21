//
//  DateViewController.swift
//  PhotoDemo
//
//  Created by user_19 on 2017/6/21.
//  Copyright © 2017年 Peter Pan. All rights reserved.
//

import UIKit

class DateViewController: UIViewController {
    @IBOutlet weak var days: UITextField!
    @IBAction func textFieldEditing(_ sender: UITextField) {
        let datePickerView:UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePickerMode.date
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: #selector(DateViewController.datePickerValueChanged),  for: UIControlEvents.valueChanged)
        
    }
    func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.medium
        
        dateFormatter.timeStyle = DateFormatter.Style.none
        
        //dateFormatter.dateFormat = "MM-dd-yyyy"
        
        // let dateObj = dateFormatter.string(from:sender.date)
        
        // feelingTextField.text = dateFormatter.stringFromDate(dateObj)
        days.text = dateFormatter.string(from:sender.date)
        
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
