//
//  AnsLangue.swift
//  IPadApp
//
//  Created by SVH IT on 11/19/15.
//  Copyright © 2015 SVH IT. All rights reserved.
//

import UIKit

class AnsLangue: NSObject {
    
    var PatientsFVS1 : String = ""
    var PatientsFVS2 : String = ""
    var PatientSex1 : String = ""
    var PatientSex2 : String = ""
    var PatientSurvey : String = ""
    var PatientWard : String = ""
    var SiteSelect : String = ""
    
    func getPatientsFVS1(Language : String)->String{
        
        switch Language {
            
        case "Eng" ,"Bur" ,"Arab":
            PatientsFVS1 = "Yes"
            
        case  "Jpn" :
            PatientsFVS1 = "はい "
      
        case "Tha" :
            PatientsFVS1 = "ใช่"
            
        default :
            PatientsFVS1 = "Yes"
            
            
        }
        
        return PatientsFVS1
        
    }
    
    func getPatientsFVS2(Language : String)->String{
        
        switch Language {
            
        case "Eng", "Bur","Arab" :
            PatientsFVS2 = "No"
            
        case  "Jpn" :
            PatientsFVS2 = "いいえ"
     
        case "Tha" :
            PatientsFVS2 = "ไม่ใช่"
            
        default :
            PatientsFVS2 = "No"
            
            
        }
        
        return PatientsFVS2
        
    }
    
    func PatientSex1(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientSex1 = "Male"
        case  "Jpn" :
            PatientSex1 = "M男性"
        case  "Bur" :
            PatientSex1 = "က်ား(Male)"
        case "Tha" :
            PatientSex1 = "ชาย"
        case "Arab" :
            PatientSex1 = "ذكر"
            
        default :
            PatientSex1 = "Male"
            
            
        }
        
        return PatientSex1
        
    }
    
    func PatientSex2(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientSex2 = "Female"
        case  "Jpn" :
            PatientSex2 = "F女性"
        case  "Bur" :
            PatientSex2 = "မ(Female)"
        case "Tha" :
            PatientSex2 = "หญิง"
        case "Arab" :
            PatientSex2 = "المريض "
            
        default :
            PatientSex2 = "Female"
            
            
        }
        
        return PatientSex2
        
    }
    
    
    func PatientSurvey1(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientSurvey = "Patient"
        case  "Jpn" :
            PatientSurvey = "患者様"
        case  "Bur" :
            PatientSurvey = "လူနာ(Patient)"
        case "Tha" :
            PatientSurvey = "ผู้ป่วย"
        case "Arab" :
            PatientSurvey = "المريض"
            
        default :
            PatientSurvey = "Patient"
            
            
        }
        
        return PatientSurvey
        
    }

    func PatientSurvey2(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientSurvey = "Family"
        case  "Jpn" :
            PatientSurvey = "ご親戚の方"
        case  "Bur" :
            PatientSurvey = "မိသားစု(Family)"
        case "Tha" :
            PatientSurvey = "ญาติ"
        case "Arab" :
            PatientSurvey = "المريض"
            
        default :
            PatientSurvey = "Family"
            
            
        }
        
        return PatientSurvey
        
    }
    
    
    func PatientSurvey3(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientSurvey = "Other"
        case  "Jpn" :
            PatientSurvey = "その他"
        case  "Bur" :
            PatientSurvey = "အခြား(Other)"
        case "Tha" :
            PatientSurvey = "อื่นๆ"
        case "Arab" :
            PatientSurvey = "قريبr "
            
        default :
            PatientSurvey = "Other"
            
            
        }
        
        return PatientSurvey
        
    }
    
    
    
    
    func PatientWard1(Language : String, Site : String )->String{
        if Site == "SVH" {
        
        switch Language {
            
        case "Eng","Bur" :
            PatientWard = "Ward 3B"
        case  "Jpn" :
            PatientWard = "病棟 3B"
        case "Tha" :
            PatientWard = "หอผู้ป่วย 3B"
        default :
            PatientWard = "Ward 3B"
    
        }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng", "Jpn","Bur" :
                PatientWard = "ICU"
           
            case "Arab" :
                PatientWard = "غرف في عناية مركزة"
                
            default :
                PatientWard = "ICU"
                
            }
            
        }
        
        return PatientWard
        
    }
    
    
    
    
    
    func PatientWard2(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 5B"
            case  "Jpn" :
                PatientWard = "病棟 5B"
           
            case "Tha" :
                PatientWard = "หอผู้ป่วย 5B"
            default :
                PatientWard = "Ward 5B"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha":
                PatientWard = "Ward 11"
            case  "Jpn" :
                PatientWard = "病棟 11"
           
            case "Arab" :
                PatientWard = "11 غرف التنويم طابق"
                
            default :
                PatientWard = "Ward 11"
                
            }
            
        }
        
        return PatientWard
        
    }

    
    
    


    
    func PatientWard3(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 6B"
            case  "Jpn" :
                PatientWard = "病棟 6B"
                
            case "Tha" :
                PatientWard = "หอผู้ป่วย 6B"
            default :
                PatientWard = "Ward 6B"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha","Jpn":
                PatientWard = "PICU"
            case "Arab" :
                PatientWard = "غرف في عناية مركزة للاطفان"
                
            default :
                PatientWard = "PICU"
                
            }
            
        }
        
        return PatientWard
        
    }
    
    
    
    func PatientWard4(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 4R"
            case  "Jpn" :
                PatientWard = "病棟 4R"
                
            case "Tha" :
                PatientWard = "หอผู้ป่วย 4R"
            default :
                PatientWard = "Ward 4R"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha":
                PatientWard = "Ward 9"
            case  "Jpn" :
                PatientWard = "病棟 9"
                
            case "Arab" :
                PatientWard = "9 غرف التنويم طابق"
                
            default :
                PatientWard = "Ward 9"
                
            }
            
        }
        
        return PatientWard
        
    }



    
    func PatientWard5(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 4A"
            case  "Jpn" :
                PatientWard = "病棟 4A"
                
            case "Tha" :
                PatientWard = "หอผู้ป่วย 4A"
            default :
                PatientWard = "Ward 4A"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha":
                PatientWard = "Ward 12"
            case  "Jpn" :
                PatientWard = "病棟 12"
                
            case "Arab" :
                PatientWard = "12 غرف التنويم طابق"
                
            default :
                PatientWard = "Ward 12"
                
            }
            
        }
        
        return PatientWard
        
    }

    

    func PatientWard6(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 5A"
            case  "Jpn" :
                PatientWard = "病棟 5A"
                
            case "Tha" :
                PatientWard = "หอผู้ป่วย 5A"
            default :
                PatientWard = "Ward 5A"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha":
                PatientWard = "NSR"
            case  "Jpn" :
                PatientWard = "NSR"
                
            case "Arab" :
                PatientWard = "غرف الولادة"
                
            default :
                PatientWard = "NSR"
                
            }
            
        }
        
        return PatientWard
        
    }

    
    
    
    
    func PatientWard7(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 6A"
            case  "Jpn" :
                PatientWard = "病棟 6A"
                
            case "Tha" :
                PatientWard = "หอผู้ป่วย 6A"
            default :
                PatientWard = "Ward 6A"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha":
                PatientWard = "Ward 10"
            case  "Jpn" :
                PatientWard = "病棟 10"
                
            case "Arab" :
                PatientWard = "10 غرف التنويم طابق"
                
            default :
                PatientWard = "Ward 10"
                
            }
            
        }
        
        return PatientWard
        
    }

    
    
    func PatientWard8(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 3R"
            case  "Jpn" :
                PatientWard = "病棟 3R"
                
            case "Tha" :
                PatientWard = "หอผู้ป่วย 3R"
            default :
                PatientWard = "Ward 3R"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha":
                PatientWard = "Ward 14"
            case  "Jpn" :
                PatientWard = "病棟 14"
                
            case "Arab" :
                PatientWard = "14 غرف التنويم طابق"
                
            default :
                PatientWard = "Ward 14"
                
            }
            
        }
        
        return PatientWard
        
    }

    
    
    
    func PatientWard9(Language : String, Site : String )->String{
        if Site == "SVH" {
            
            switch Language {
                
            case "Eng",  "Bur":
                PatientWard = "Ward 5R"
            case  "Jpn" :
                PatientWard = "病棟 5R"
                
            case "Tha" :
                PatientWard = "หอผู้ป่วย 5R"
            default :
                PatientWard = "Ward 5R"
                
            }
        }
        else if Site == "SNH"{
            
            
            switch Language {
                
            case "Eng" ,"Bur","Tha":
                PatientWard = "LR"
            case  "Jpn" :
                PatientWard = "LR"
                
            case "Arab" :
                PatientWard = "غرف الحضانة"
                
            default :
                PatientWard = "LR"
                
            }
            
        }
        
        return PatientWard
        
    }

    

}
