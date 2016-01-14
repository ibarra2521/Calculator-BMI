//
//  ViewController.swift
//  Calculator BMI
//
//  Created by Nivardo Ibarra on 11/9/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var weight: UITextField!
    @IBOutlet weak var height: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        weight.delegate = self
        height.delegate = self
    }   

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldDidBeginEditing(textField: UITextField) {
        var point: CGPoint
        point = CGPointMake(0, textField.frame.origin.y - 50)
        self.scrollView.setContentOffset(point, animated: true)
        
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
        self.scrollView.setContentOffset(CGPointZero, animated: true)
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let nextView = segue.destinationViewController as! ViewResult
        nextView.BMI = BMI()
    }
    
    @IBAction func calculateBMI(sender: AnyObject) {
        BMI()
    }
    
    func BMI()->Double {
        let weightLocal:Double?
        weightLocal = Double(self.weight.text!)!
        let heightLocal:Double = Double(self.height.text!)!
        return weightLocal!/(heightLocal * heightLocal)
//        print("Result: \(BMI)")
    }
    
    @IBAction func textFieldDoneEditing(sender: UITextField) {
        sender.resignFirstResponder() // Hidden keyboard
    }

    @IBAction func backgroundTap(sender: UIControl) {
        weight.resignFirstResponder()
        height.resignFirstResponder()
    }
}

