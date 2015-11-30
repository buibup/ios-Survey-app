//
//  DetailTableViewController.swift
//  IPadApp
//
//  Created by SVH IT on 11/11/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit





class DetailTableViewController: UITableViewController {
    
   
    
    var HeadNumber : String = ""
    var QuestionUID : String = ""
    
    var listData = Array<Answer>()
    var Ansid :String = ""
    var AnsRowidOld : Int = 0
    var  answerN :String = ""
    
    internal var selectedIndexPath:NSIndexPath? = nil

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = pName
        //QuestionID = QuestionUID
        
        if HeadNumber == "1" {
             listData = DataFile().getData_H1()
        }
        else if HeadNumber == "2"{
             listData = DataFile().getData_Choice10()
        }
        else if HeadNumber == "3"{
             listData = DataFile().getData_H2()
        }
       
        self.navigationItem.hidesBackButton = true
        
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return listData.count
    }
    
    
    
    

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MyCustomTableViewCell

        // Configure the cell...
          cell.myLabel.text = listData[indexPath.row].answerName
      // Ansid = listData[indexPath.row].answerID
        
       
        
        if pAnsSelect == listData[indexPath.row].answerName {
            
            cell.myImageView.hidden = listData[indexPath.row].SelectC
            IndexSelectC = indexPath.row
            IndexPathG = indexPath
            print("row Before ", IndexSelectC)
            
        }
        else{
            cell.myImageView.hidden = !listData[indexPath.row].SelectC
        }
        
      
       
        return cell
    }
    
    
    
    
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
    
         let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MyCustomTableViewCell
        
        if pAnsSelect == "" {
           
            
            Ansid = listData[indexPath.row].answerID
            
            answerN = listData[indexPath.row].answerName
            
            
            cell.myLabel.text = listData[indexPath.row].answerName
            
            
            cell.myImageView.hidden = listData[indexPath.row].SelectC
        }
        else{
            if IndexPathG != nil
            {
             let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: IndexPathG) as! MyCustomTableViewCell
            
            
            cell.myImageView.hidden = !listData[IndexPathG.row].SelectC
            
            }
            
            
            
            pAnsSelect2 = listData[indexPath.row].answerName
            
            
            
            Ansid = listData[indexPath.row].answerID
            
            answerN = listData[indexPath.row].answerName
            
            
            cell.myLabel.text = listData[indexPath.row].answerName
            
            
            cell.myImageView.hidden = listData[indexPath.row].SelectC
            
            do{
            
       
            try tableView.reloadRowsAtIndexPaths(
                    [indexPath],
                    withRowAnimation:UITableViewRowAnimation.Automatic)
            }
            
           
        }
       
        
        
        
        
        
       /* let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! MyCustomTableViewCell
       
      
        
       if pAnsSelect == "" {
        
        
        Ansid = listData[indexPath.row].answerID
        
        answerN = listData[indexPath.row].answerName
        
        
        cell.myLabel.text = listData[indexPath.row].answerName
        
        
        cell.myImageView.hidden = listData[indexPath.row].SelectC
        
        
        }
        else{
          
            
            
            
            if selectedIndexPath == indexPath
            {
                selectedIndexPath = nil
                tableView.reloadRowsAtIndexPaths(
                    [indexPath],
                    withRowAnimation:UITableViewRowAnimation.None)
                
                tableView.deselectRowAtIndexPath(indexPath, animated:false)
                
                /* let a =  UIAlertController(title: "", message: Ansid, preferredStyle: .Alert)
                let okButton = UIAlertAction(title: "ok111111111", style: .Default, handler: nil)
                a.addAction(okButton)
                self.presentViewController(a, animated: true, completion: nil)
                */
                
                return
                
                
            }
            
            if selectedIndexPath != nil
            {
                let pleaseRedrawMe = selectedIndexPath!
                // (note that it will be drawn un-selected
                // since we're chaging the 'selectedIndexPath' global)
                selectedIndexPath = indexPath
                tableView.reloadRowsAtIndexPaths(
                    [pleaseRedrawMe, indexPath],
                    withRowAnimation:UITableViewRowAnimation.None)
                
                 /*let a =  UIAlertController(title: "", message: Ansid, preferredStyle: .Alert)
                let okButton = UIAlertAction(title: "ok2222222", style: .Default, handler: nil)
                a.addAction(okButton)
                self.presentViewController(a, animated: true, completion: nil)*/
                return;
            }
            
            selectedIndexPath = indexPath
            tableView.reloadRowsAtIndexPaths(
                [indexPath],
                withRowAnimation:UITableViewRowAnimation.None)
        
        
        
      
        
        

            pAnsSelect2 = listData[indexPath.row].answerName
            
         
            
            Ansid = listData[indexPath.row].answerID
            
            answerN = listData[indexPath.row].answerName
            
            
            cell.myLabel.text = listData[indexPath.row].answerName
            
            
            cell.myImageView.hidden = listData[indexPath.row].SelectC
            
        
            
            
            

        }
        */
        
        pAns = answerN
        pAnsid = Ansid
        QuestionName = pName
        
        if HeadNumber == "1" {
            HeadSec = 0
        }
        else if HeadNumber == "2" {
            HeadSec = 1
        }
        else if HeadNumber == "3" {
            HeadSec = 2
        }
     
     
    }
    
   /* override func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {
        let selectAction = UITableViewRowAction(style: UITableViewRowActionStyle.Normal, title: "ff")
            { ( action,indexPath) -> Void in
                self.listData[indexPath.row].SelectC = !self.listData[indexPath.row].SelectC
                self.tableView.reloadData()
                
        }
        return [selectAction]
          }
    */

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
/*
    // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
      
        
    
       
        
        
        
           }
    
    */

}
