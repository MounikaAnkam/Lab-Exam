//
//  RollViewController.swift
//  LabExam
//
//  Created by Mounika Ankam on 3/12/15.
//  Copyright (c) 2015 Mounika Ankam. All rights reserved.
//

import UIKit

class RollViewController: UIViewController {
    
    var app:AppDelegate = UIApplication.sharedApplication().delegate as AppDelegate
     var sum1 = 0
    var sum2 = 0

    @IBOutlet weak var roll1: UILabel!
    
    
    @IBOutlet weak var total1: UILabel!
    
    
    @IBOutlet weak var roll2: UILabel!
    
    
    @IBOutlet weak var total2: UILabel!
    
    
    @IBAction func diceroll1(sender: AnyObject) {
        var num1:Int = (random()%6) + 1
        roll1.text = num1.description
        
        var ro1ltotal1 : [Int] = []
        ro1ltotal1.append(num1 * num1)
        for i in ro1ltotal1 {
           
            sum1+=i
        }
        total1.text = sum1.description
        if sum1 >= 50 {
        var alert:UIAlertView = UIAlertView(title: "Congratulations", message: "Player1 Won", delegate:self, cancelButtonTitle: "OK")
            alert.show()
        }
    }
    @IBAction func diceroll2(sender: AnyObject) {
        var num2:Int = (random()%6) + 1
        roll2.text = num2.description
        
        var ro1ltotal2 : [Int] = []
        ro1ltotal2.append(num2 * num2)
        for i in ro1ltotal2 {
            
            sum2+=i
        }
        total2.text = sum2.description
        
        if sum2 >= 50 {
         var alert:UIAlertView = UIAlertView(title: "Congratulations", message: "Player2 Won", delegate:self, cancelButtonTitle: "OK")
            alert.show()
        }
    }
    
    @IBAction func reset(sender: AnyObject) {
        var x:Int = 0
        sum1=0
        sum2=0
        roll1.text = x.description
        roll2.text = x.description
        total1.text = x.description
        total2.text = x.description
    }
    
    @IBAction func record(sender: AnyObject) {
        var str1:NSString = total1.text!
        var tot1:Int = str1.integerValue
        
        var str2:NSString = total2.text!
        var tot2:Int = str2.integerValue

        var diff:Int = tot1 - tot2
        app.differences.append(diff)
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
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
