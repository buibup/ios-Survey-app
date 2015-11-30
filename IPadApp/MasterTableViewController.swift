//
//  MasterTableViewController.swift
//  IPadApp
//
//  Created by SVH IT on 11/11/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit

class MasterTableViewController: UITableViewController {
    
     var listDataH = Array<Question>()
    
    let Head1 = "BACKGROUND QUESTIONS : "
    let Head2 = "Overall Rating of hospital"
    let Head3 = "Your care from nurses during this hospital stay"
     var pLists : String = ""
    var vTemp : String = ""
   
    
    
    
    
    let Question1 = QuestionModel().getQHead1(BG1,BG2 : BG2)
    
    let Question2 = QuestionModel().getQHead2(Over1,Over2 : Over2)
    
    let Question3 = QuestionModel().getQHead3(HS1,HS2:HS2,HS3:HS3,HS4: HS4)

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "CSI IPD"
      //  self.navigationItem.rightBarButtonItem = editButtonItem()
       // self.navigationController.
       self.navigationItem.hidesBackButton = false ;
        
      

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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }
    
    override func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 60.0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        switch section {
        case 0 :
            return Question1.count
        case 1 :
            return Question2.count
        case 2 :
            return Question3.count
        default :
            return 0
        }
    }

    
    
   override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
    
   
    
    //let v : String
    if indexPath.section == 0 {
        QuestionID = Question1[indexPath.row].QuestionID
        pName = Question1[indexPath.row].QuestionName
        pAnsSelect = Question1[indexPath.row].Answer
    }
    else if indexPath.section == 1 {
        QuestionID = Question2[indexPath.row].QuestionID
         pName = Question3[indexPath.row].QuestionName
         pAnsSelect = Question1[indexPath.row].Answer
    }
    else{
        QuestionID = Question3[indexPath.row].QuestionID
         pName = Question3[indexPath.row].QuestionName
         pAnsSelect = Question3[indexPath.row].Answer
        
    }
    
    
    
  

    }
    
    
    
    
    
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MasterCustomTableViewCell
       
        
        
        
        if QuestionID == "BG1" {
            
            BG1 = pAns
            Question1[0].Answer = pAns
            
            
        }
        if QuestionID == "BG2" {
            BG2 = pAns
            Question1[1].Answer = pAns
            
        }

        
        if QuestionID == "Over1" {
            Over1 = pAns
            Question2[0].Answer = pAns
           
        }

        
        if QuestionID == "Over2" {
            Over2 = pAns
            Question2[1].Answer = pAns
            
        }
        
        if QuestionID == "HS1" {
            HS1 = pAns
            Question3[0].Answer = pAns
            
        }
        
        if QuestionID == "HS2" {
            HS2 = pAns
            Question3[1].Answer = pAns
            
        }
        if QuestionID == "HS3" {
            HS3 = pAns
            Question3[2].Answer = pAns
            
        }
        if QuestionID == "HS4" {
            HS4 = pAns
            Question3[3].Answer = pAns
            
        }
               
       
        
       
        
        switch indexPath.section {
        case 0 :
            let v = Question1[indexPath.row].QuestionName
            
           
            cell.QuestionName.text  = v
                       
            cell.answerLabel.text = Question1[indexPath.row].Answer
            cell.QuestionID.text = Question1[indexPath.row].QuestionID
            cell.QuestionID.hidden = true
        case 1 :
            let v = Question2[indexPath.row].QuestionName
            
            
            cell.QuestionName.text  = v
           // cell.answerLabel.text = Question2[indexPath.row].Answer
            cell.QuestionID.text = Question2[indexPath.row].QuestionID
            
            
            cell.answerLabel.text = Question2[indexPath.row].Answer
            cell.QuestionID.hidden = true
        case 2 :
            let v = Question3[indexPath.row].QuestionName
            
            
            cell.QuestionName.text  = v
            cell.QuestionID.text = Question3[indexPath.row].QuestionID
            
            cell.answerLabel.text = Question3[indexPath.row].Answer
            cell.QuestionID.hidden = true
        default :
            break
            
            
            
        }
       
        
        
        
        
       
        return cell
    }
    
   
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    
    
    
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0 :
            return Head1
        case 1 :
            return Head2
            
        case 2 :
            return Head3
            
        default :
            return ""
        }
    }
    
   /* override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let v :String
        if indexPath.section == 0 {
            v = Question1[indexPath.row]
            
        }
        else if indexPath.section == 1{
            v = Question2[indexPath.row]
        }
        else{
            v = Question3[indexPath.row]
        }
        
        let msg = " You Select \(v) "
        let a = UIAlertController(title: "Your Select ", message: msg, preferredStyle: .Alert)
        let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
        a.addAction(okButton)
        presentViewController(a,animated : true ,completion :nil)
        
    }*/
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        
        let DTV = segue.destinationViewController as! DetailTableViewController
        
        
    
    
       /* if let indexPath = self.tableView.indexPathForSelectedRow{
           
            
            switch indexPath.row{
            case 0:
                DTV.pName = Question1[indexPath.row].QuestionName
                DTV.QuestionUID = Question1[indexPath.row].QuestionID
                print("QuestionUID1 = ",Question1[indexPath.row].QuestionID)
                
              /*  let msg = Question1[indexPath.row].QuestionID
                let a = UIAlertController(title: "Your Select ", message: msg, preferredStyle: .Alert)
                let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
                a.addAction(okButton)
                presentViewController(a,animated : true ,completion :nil)*/
           
            case 1:
          
                DTV.pName = Question2[indexPath.row].QuestionName
                DTV.QuestionUID = Question2[indexPath.row].QuestionID
                print("QuestionUID2 = ",Question2[indexPath.row].QuestionID)
               /*let msg = Question2[indexPath.row].QuestionID
                let a = UIAlertController(title: "Your Select ", message: msg, preferredStyle: .Alert)
                let okButton = UIAlertAction(title: "OK", style: .Default, handler: nil)
                a.addAction(okButton)
                presentViewController(a,animated : true ,completion :nil)*/
            
            case 2:
            
                DTV.pName = Question3[indexPath.row].QuestionName
                DTV.QuestionUID = Question3[indexPath.row].QuestionID
                print("QuestionUID3 = ",Question3[indexPath.row].QuestionID)
                
                
            default:
                break
            }
           
        }*/
        
    
    
        if let indexSection = self.tableView.indexPathForSelectedRow{
            
            
            
            switch indexSection.section{
            case 0:
               
                DTV.HeadNumber = "1"
             
                
                //vTemp = "Answer1"
            case 1:
                // vTemp = "Answer2"
               
                DTV.HeadNumber = "2"
            case 2:
                //vTemp = "Answer3"
               
                DTV.HeadNumber = "3"
            default:
                break
            }
            // (segue.destinationViewController as! DetailTableViewController)
        }

        
        
        /*if  let indexPath = tableView.indexPathForCell(sender as! UITableViewCell){
            
            
            let DTV = segue.destinationViewController as! DetailTableViewController
            
            if indexPath.section == 0{
                DTV.pName = Question1[indexPath.row]
                
            }
            else if indexPath.section == 1{
                DTV.pName = Question2[indexPath.row]
            }
            else{
                DTV.pName = Question3[indexPath.row]
                
            }
        }
*/
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }

    

}
