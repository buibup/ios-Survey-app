//
//  MainViewController.swift
//  IPadApp
//
//  Created by SVH IT on 11/17/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

  
    var GetLanguage = JPLangue()
    var GetAnsLanguage = AnsLangue()
    var StateShowHide : Bool = false
    var SiteSelect : String = ""
    var TypeIPD : String = ""
    var NEntities = [Entities]()
    var WardName : String = ""
    
    
    @IBOutlet weak var SegSite: UISegmentedControl!
    
    
    @IBAction func SegSiteMethod(sender: AnyObject) {
        let s = sender as! UISegmentedControl
        if s.selectedSegmentIndex == 0 {
            SiteSelect = "SVH"
        }
        else if s.selectedSegmentIndex == 1 {
            SiteSelect = "SNH"
        
        }
        else{
            
            let AlertIPD = UIAlertController(title: "Select Site !!", message: "", preferredStyle: .Alert)
            
            
            self.presentViewController(AlertIPD, animated: true, completion: nil)
        
        }
    }
    
    
    @IBAction func SegIPDMethod(sender: AnyObject) {
        let s = sender as! UISegmentedControl
        if s.selectedSegmentIndex == 0 {
            TypeIPD = "IPD"
        }
        else if s.selectedSegmentIndex == 1 {
            TypeIPD = "IPD Nurse"
            
        }
        else{
            
            let AlertIPD = UIAlertController(title: "Select Type !!", message: "", preferredStyle: .Alert)
            
            
            self.presentViewController(AlertIPD, animated: true, completion: nil)
        }
        
    }
    
    
    @IBOutlet weak var labelDateOFS: UILabel!
    
    @IBAction func SelectWard1(sender: AnyObject) {
        
        if SegPatientward1.selectedSegmentIndex != -1 {
            SegPatientward2.selectedSegmentIndex = -1
            WardName = SegPatientward1.titleForSegmentAtIndex(SegPatientward1.selectedSegmentIndex)!
        }
        
    }
    
    
    @IBAction func SelectWard2(sender: AnyObject) {
        if SegPatientward2.selectedSegmentIndex != -1 {
            SegPatientward1.selectedSegmentIndex = -1
            WardName = SegPatientward2.titleForSegmentAtIndex(SegPatientward2.selectedSegmentIndex)!
        }
        
        
        
    }
   
    @IBOutlet weak var SegTypeIPD: UISegmentedControl!
    @IBOutlet weak var SegPatientward2: UISegmentedControl!
    @IBOutlet weak var SegPatientward1: UISegmentedControl!
    @IBOutlet weak var SegPatientSurvey: UISegmentedControl!
    @IBOutlet weak var SegPatientSex: UISegmentedControl!
    @IBOutlet weak var SegPatientFVS: UISegmentedControl!
    
    @IBAction func SegPatientFVSMethod(sender: AnyObject) {
    }
    
    
    @IBOutlet weak var lblDateofService: UITextField!
    
    @IBOutlet weak var buttonHide: UIButton!
    @IBOutlet weak var lblTelephone: UILabel!
    @IBOutlet weak var lblPatientName: UILabel!
    @IBOutlet weak var lblComment: UILabel!
    @IBOutlet weak var lblNumofHospital: UILabel!
    @IBOutlet weak var lblWhoSurvey: UILabel!
    
    @IBOutlet weak var lblPatientSex: UILabel!
    @IBOutlet weak var lblPatientVisit: UILabel!
    //@IBOutlet weak var lblDateofService: UILabel!
    @IBOutlet weak var lblHeadHN: UILabel!
    @IBOutlet weak var lblHN: UITextField!
    
    @IBAction func bthHideHN(sender: AnyObject) {
        if StateShowHide == false {
            self.buttonHide.setTitle("Show HN", forState:.Normal)
            StateShowHide = true
            lblHeadHN.hidden = true
            lblHN.hidden = true
            
            
        }
        else {
              self.buttonHide.setTitle("Hide HN", forState:.Normal)
             StateShowHide = false
            lblHeadHN.hidden = false
            lblHN.hidden = false

            
        }
        
        
    }
    
   
    @IBAction func selectDate(sender: UITextField) {
        
        let datePickerView:UIDatePicker = UIDatePicker()
        
        datePickerView.datePickerMode = UIDatePickerMode.Date
        
        sender.inputView = datePickerView
        
        datePickerView.addTarget(self, action: Selector("datePickerValueChanged:"), forControlEvents: UIControlEvents.ValueChanged)
    }
    
    
    func datePickerValueChanged(sender:UIDatePicker) {
        
        let dateFormatter = NSDateFormatter()
        
        dateFormatter.dateStyle = NSDateFormatterStyle.MediumStyle
        
        dateFormatter.timeStyle = NSDateFormatterStyle.NoStyle
        
        lblDateofService.text = dateFormatter.stringFromDate(sender.date)
        
    }
   
    
    func changeLang(Language : String){
        
        
        self.labelDateOFS.text = GetLanguage.getDateString(pLanguage)
        self.lblPatientName.text = GetLanguage.getPatientName(pLanguage)
        self.lblPatientSex.text = GetLanguage.getPatientSex(pLanguage)
        self.lblPatientVisit.text = GetLanguage.getPatientFirstVisit(pLanguage)
        self.lblTelephone.text = GetLanguage.getTelephone(pLanguage)
        self.lblWhoSurvey.text = GetLanguage.getWhoSurvey(pLanguage)
        self.lblNumofHospital.text = GetLanguage.getNumofdayinHos(pLanguage)
        self.lblComment.text = GetLanguage.getcomment(pLanguage)
        self.SegPatientFVS.setTitle(GetAnsLanguage.getPatientsFVS1(pLanguage), forSegmentAtIndex: 0)
        self.SegPatientFVS.setTitle(GetAnsLanguage.getPatientsFVS2(pLanguage), forSegmentAtIndex: 1)
        self.SegPatientSex.setTitle(GetAnsLanguage.PatientSex1(pLanguage), forSegmentAtIndex: 0)
        self.SegPatientSex.setTitle(GetAnsLanguage.PatientSex2(pLanguage), forSegmentAtIndex: 1)
        self.SegPatientSurvey.setTitle(GetAnsLanguage.PatientSurvey1(pLanguage), forSegmentAtIndex: 0)
        self.SegPatientSurvey.setTitle(GetAnsLanguage.PatientSurvey2(pLanguage), forSegmentAtIndex: 1)
        self.SegPatientSurvey.setTitle(GetAnsLanguage.PatientSurvey3(pLanguage), forSegmentAtIndex: 2)
        self.SegPatientward1.setTitle(GetAnsLanguage.PatientWard1(pLanguage,Site:self.SiteSelect), forSegmentAtIndex: 0)
        self.SegPatientward1.setTitle(GetAnsLanguage.PatientWard2(pLanguage, Site:self.SiteSelect), forSegmentAtIndex: 1)
        self.SegPatientward1.setTitle(GetAnsLanguage.PatientWard3(pLanguage, Site: self.SiteSelect), forSegmentAtIndex: 2)
        self.SegPatientward1.setTitle(GetAnsLanguage.PatientWard4(pLanguage, Site: self.SiteSelect ), forSegmentAtIndex: 3)
        self.SegPatientward2.setTitle(GetAnsLanguage.PatientWard5(pLanguage, Site: self.SiteSelect ), forSegmentAtIndex: 0)
        self.SegPatientward2.setTitle(GetAnsLanguage.PatientWard6(pLanguage, Site: self.SiteSelect), forSegmentAtIndex: 1)
        self.SegPatientward2.setTitle(GetAnsLanguage.PatientWard7(pLanguage, Site: self.SiteSelect ), forSegmentAtIndex: 2)
        self.SegPatientward2.setTitle(GetAnsLanguage.PatientWard8(pLanguage, Site: self.SiteSelect ), forSegmentAtIndex: 3)
        
        
    }
    
    
    
    
    @IBAction func btnLanguage(sender: AnyObject) {
        if self.SegSite.selectedSegmentIndex == -1 {
            
            let AlertCancle = UIAlertController(title: "Please Select Site !!!!", message: "", preferredStyle: .Alert)
            
            
            let CancleButton = UIAlertAction(title: "OK", style: .Cancel) { (action) -> Void in
                self.SiteSelect = ""
                pLanguage = ""
            }
            
            AlertCancle.addAction(CancleButton)
            
            self.presentViewController(AlertCancle, animated: true, completion: nil)
            
            
        }
        else {
            
            let AlertSite = UIAlertController(title: "Select Language ", message: "", preferredStyle: .Alert)
            
            let ENGButton = UIAlertAction(title: "English", style: .Default) { (action) -> Void in
                self.lbllanguage.text = "English"
                 pLanguage = "Eng"
                 self.changeLang(pLanguage);
               
            }
            
            let JPNButton = UIAlertAction(title: "日本語", style: .Default) { (action) -> Void in
                self.lbllanguage.text = "日本語"
                pLanguage = "Jpn"
                 self.changeLang(pLanguage);
                
            }
            
            let MynButton = UIAlertAction(title: "Burmese", style: .Default) { (action) -> Void in
                self.lbllanguage.text = "Burmese"
                pLanguage = "Bur"
                 self.changeLang(pLanguage);
                
            }
            
            let THButton = UIAlertAction(title: "ไทย", style: .Default) { (action) -> Void in
                self.lbllanguage.text = "ไทย"
                pLanguage = "Tha"
                 self.changeLang(pLanguage);
                
            }
            
            let ArabButton = UIAlertAction(title: "العربية", style: .Default) { (action) -> Void in
                self.lbllanguage.text = "العربية"
                pLanguage = "Arab"
                 self.changeLang(pLanguage);
                
            }
            
            
            
            switch self.SiteSelect {
            case  "SVH":
                AlertSite.addAction(ENGButton)
                AlertSite.addAction(JPNButton)
                AlertSite.addAction(MynButton)
                AlertSite.addAction(THButton)
               
                
            case "SNH" :
                AlertSite.addAction(ENGButton)
                AlertSite.addAction(JPNButton)
                AlertSite.addAction(MynButton)
                AlertSite.addAction(THButton)
                AlertSite.addAction(ArabButton)
                
                
            default : break
                
                
            }
            
            //if self.lbllanguage.text != "" { pLanguage = self.lbllanguage.text! }
            
             self.presentViewController(AlertSite, animated: true, completion: nil)
            
            
            
        }

        
    }
    
    
    
   
    @IBOutlet weak var lbllanguage: UILabel!
    @IBAction func BtnSubmit() {
        
        do {
            
            var TypeIPD : String = ""
            if SegTypeIPD.selectedSegmentIndex != -1 {
                TypeIPD = SegTypeIPD.titleForSegmentAtIndex(SegTypeIPD.selectedSegmentIndex)!
            }
            else{
                TypeIPD = ""
            }
            
            
            
            var PatientFVS : String = ""
            if SegPatientFVS.selectedSegmentIndex != -1{
                PatientFVS = SegPatientFVS.titleForSegmentAtIndex(SegPatientFVS.selectedSegmentIndex)!
            }
            else{
                PatientFVS = ""
            }
            
            
            
            var PatientSex : String = ""
            if SegPatientSex.selectedSegmentIndex != -1{
                PatientSex = SegPatientSex.titleForSegmentAtIndex(SegPatientSex.selectedSegmentIndex)!
            }
            else{
                PatientSex = ""
            }
            
            
            var PatientSurvey : String = ""
            if SegPatientSurvey.selectedSegmentIndex != -1 {
                PatientSurvey = SegPatientSurvey.titleForSegmentAtIndex(SegPatientSurvey.selectedSegmentIndex)!
            }
            else{
                PatientSurvey = ""
            }
            
     try   NEntities.append(Entities(record: 1, Site:self.SiteSelect, langues: pLanguage, TypeIPD: TypeIPD, HN:lblHN.text!, DateSer: lblDateofService.text!, PatientFVS:PatientFVS, PatientSex:PatientSex, PatientSurvey: PatientSurvey, NumOFDay: lblNumofHospital.text!, Ward: WardName, Comment: lblComment.text!, PatientName: lblPatientName.text!, TelePhone: lblTelephone.text!))
       
            
            
         //let AlertSite = UIAlertController(title: "Select Language ", message:String( NEntities[0].PatientSurvey), preferredStyle: .Alert)
            
        // self.presentViewController(AlertSite, animated: true, completion: nil)
       // print(NEntities.count)
          /* if let loadedData = NSUserDefaults().dataForKey("Entities") {
                loadedData
                if let loadedPerson = NSKeyedUnarchiver.unarchiveObjectWithData(loadedData) as? [Entities] {
                    //  loadedPerson[0].Site   //"Leo"
                    //  loadedPerson[0].PatientFVS    //45
                }
            }*/

        
        
        }
        catch is exception {
            print(" Error = " , exception.self)
        }
        
       /*   let AllData
        = NSKeyedArchiver.archivedDataWithRootObject(NEntities)
        NSUserDefaults().setObject(Entities.self, forKey: "Entities")
        
        print(AllData)
        */
        
         }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SegPatientFVS.selectedSegmentIndex = -1
        SegPatientSex.selectedSegmentIndex = -1
        SegPatientSurvey.selectedSegmentIndex = -1
        SegPatientward1.selectedSegmentIndex = -1
        SegPatientward2.selectedSegmentIndex = -1
        SegSite.selectedSegmentIndex = -1
        SegTypeIPD.selectedSegmentIndex = -1
        
        
        
     
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
