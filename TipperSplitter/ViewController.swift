//
//  ViewController.swift
//  TipperSplitter
//
//  Created by Mayank Gandhi on 10/07/18.
//  Copyright © 2018 Mayank Gandhi. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var TipPercent: UISegmentedControl!
    @IBOutlet weak var billValue: UITextField!
    @IBOutlet weak var tipValue: UILabel!
    @IBOutlet weak var totalValue: UILabel!
    @IBOutlet weak var PeopleSlider: UISlider!
    @IBOutlet weak var peoplelabel: UILabel!
    @IBOutlet weak var shareValue: UILabel!
    @IBOutlet weak var venmoButton: UIButton!
    
    var bill:Double = 0
    var tip:Double = 0
    var total:Double = 0
    var people:Double = 0
    var share: Double = 0
    
    @IBAction func TapGesture(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func tippercentChanged(_ sender: Any) {
        CalculateTip(TipPercent)
    }
    
    @IBAction func tipvalueChanged(_ sender: Any) {
        CalculateTip(TipPercent)
    }
    
    @IBAction func CalculateTip(_ sender: Any)
    {
        
        bill = Double(billValue.text!) ?? 0
        let tipPercentages = [0.18,0.20,0.22]
        tip = bill * tipPercentages[TipPercent.selectedSegmentIndex]
        total = bill + tip
        tipValue.text = String(format: "$%f", tip)
        totalValue.text = String(format: "$%f", total)
        
    }
    
    @IBAction func CalculateSplit(_ sender: Any)
    {
        
        people = Double(PeopleSlider.value)
        peoplelabel.text = String(format: "$%d",people)
        share = total/people
        shareValue.text = String(format: "$%f",share)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

