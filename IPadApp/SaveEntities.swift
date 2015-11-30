//
//  SaveEntities.swift
//  IPadApp
//
//  Created by SVH IT on 11/23/15.
//  Copyright © 2015 SVH IT. All rights reserved.
//

import Foundation
import UIKit

//var EntitiesData :Entities = Entities ()

class Entities:NSObject,NSCoding {
    var record : Int
    var Site : String
    var langues : String
    var TypeIPD : String
    var HN : String
    var DateSer : String
    var PatientFVS : String
    var PatientSex : String
    var PatientSurvey : String
    var NumOFDay : String
    var Ward : String
    var Comment : String
    var PatientName : String
    var TelePhone : String
    
    
    
    required init(coder aDecoder : NSCoder){
        record = aDecoder.decodeObjectForKey("record") as! Int
        Site = aDecoder.decodeObjectForKey("Site") as! String
        langues = aDecoder.decodeObjectForKey("langues") as! String
        TypeIPD = aDecoder.decodeObjectForKey("TypeIPD") as! String
        HN = aDecoder.decodeObjectForKey("HN") as! String
        DateSer = aDecoder.decodeObjectForKey("DateSer") as! String
        PatientFVS = aDecoder.decodeObjectForKey("PatientFVS") as! String
        PatientSex = aDecoder.decodeObjectForKey("PatientSex") as! String
        PatientSurvey = aDecoder.decodeObjectForKey("PatientSurvey") as! String
        NumOFDay = aDecoder.decodeObjectForKey("NumOFDay") as! String
        Ward = aDecoder.decodeObjectForKey("Ward") as! String
        Comment = aDecoder.decodeObjectForKey("Comment") as! String
        PatientName = aDecoder.decodeObjectForKey("PatientName") as! String
        TelePhone = aDecoder.decodeObjectForKey("TelePhone") as! String
        
        super.init()
        
    }
    func encodeWithCoder(aCoder : NSCoder){
         aCoder.encodeObject(record, forKey: "record")
         aCoder.encodeObject(Site, forKey: "Site")
         aCoder.encodeObject(langues, forKey: "langues")
         aCoder.encodeObject(TypeIPD, forKey: "TypeIPD")
         aCoder.encodeObject(HN, forKey: "HN")
         aCoder.encodeObject(DateSer, forKey: "DateSer")
         aCoder.encodeObject(PatientFVS, forKey: "PatientFVS")
         aCoder.encodeObject(PatientSex, forKey: "PatientSex")
         aCoder.encodeObject(PatientSurvey, forKey: "PatientSurvey")
         aCoder.encodeObject(NumOFDay, forKey: "NumOFDay")
         aCoder.encodeObject(Ward, forKey: "Ward")
         aCoder.encodeObject(Comment, forKey: "Comment")
         aCoder.encodeObject(PatientName, forKey: "PatientName")
         aCoder.encodeObject(TelePhone, forKey: "TelePhone")
        
        
        
    }
    
    init(record : Int , Site : String,langues : String,TypeIPD : String ,HN : String ,DateSer : String, PatientFVS :String,PatientSex : String,PatientSurvey : String, NumOFDay : String,Ward : String ,
        Comment : String,PatientName : String , TelePhone : String){
            self.record = record
            self.Site = Site
            self.langues = langues
            self.TypeIPD = TypeIPD
            
            self.HN = HN
            self.DateSer = DateSer
            self.PatientFVS = PatientFVS
            self.PatientSex = PatientSex
            
            self.PatientSurvey = PatientSurvey
            self.NumOFDay = NumOFDay
            self.Ward = Ward
            self.Comment = Comment
            self.PatientName = PatientName
            self.TelePhone = TelePhone
            
            
            
    }
    
    
     
}



/*struct SaveEntities {
    var record : Int
    var Site : String
    var langues : String
    var TypeIPD : String
    var HN : String
    var DateSer : String
    var PatientFVS : String
    var PatientSex : String
    var PatientSurvey : String
    var NumOFDay : String
    var Ward : String
    var Comment : String
    var PatientName : String
    var TelePhone : String
    
    
    
    
    init(record : Int , Site : String,langues : String,TypeIPD : String ,HN : String ,DateSer : String, PatientFVS :String,PatientSex : String,PatientSurvey : String, NumOFDay : String,Ward : String ,
        Comment : String,PatientName : String , TelePhone : String){
        self.record = record
        self.Site = Site
        self.langues = langues
        self.TypeIPD = TypeIPD
            
        self.HN = HN
        self.DateSer = DateSer
        self.PatientFVS = PatientFVS
        self.PatientSex = PatientSex
        
        self.PatientSurvey = PatientSurvey
        self.NumOFDay = NumOFDay
        self.Ward = Ward
        self.Comment = Comment
        self.PatientName = PatientName
        self.TelePhone = TelePhone

        
        
    }*/

