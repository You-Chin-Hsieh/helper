//
//  LoverDetailViewController.swift
//  Demo
//
//  Created by Peter Pan on 13/12/2016.
//  Copyright © 2016 Peter Pan. All rights reserved.
//

import UIKit

class LoverDetailViewController: UIViewController {

    var ThingDic:[String:String]!
    
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var interestLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        heightLabel.text = ThingDic["place"]!
        weightLabel.text = ThingDic["other"]!
        interestLabel.text = ThingDic["time"]!
        
        self.navigationItem.title = ThingDic["name"]!

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
