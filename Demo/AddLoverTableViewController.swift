//
//  AddLoverTableViewController.swift
//  Demo
//
//  Created by Peter Pan on 20/12/2016.
//  Copyright © 2016 Peter Pan. All rights reserved.
//

import UIKit

class AddLoverTableViewController: UITableViewController {
    
    @IBOutlet weak var DatePicker: UIDatePicker!
    @IBOutlet weak var nameTextField: UITextField!
    
    var timeText="";
    @IBAction func DatePickerAction(_ sender: Any) {
        var dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy HH:mm"
        var strDate = dateFormatter.string(from: DatePicker.date)
        self.myDatePickerLabel.text = strDate
        timeText=strDate
    }
    @IBOutlet weak var other: UITextView!
    //@IBOutlet weak var Caga: UIPickerView!
    @IBOutlet weak var myDatePickerLabel: UILabel!
    @IBOutlet weak var starTextField: UITextField!
    
    @IBAction func done(_ sender: Any) {
        
        print("\(nameTextField.text!) \(starTextField.text!)")
        
        let dic = ["name":nameTextField.text!,
                   "place":starTextField.text!,
                   "time":timeText,
                   "other":other.text!,
                 ]
        
        let notiName = Notification.Name("addLover")
        NotificationCenter.default.post(name: notiName, object: nil, userInfo: dic)

        self.navigationController?.popViewController(animated: true)
       // showNotificationWidtFireDate()
        
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source
    /*
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }
    */
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
