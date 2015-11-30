//
//  JPLangue.swift
//  IPadApp
//
//  Created by SVH IT on 11/18/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit

class JPLangue: NSObject {
    
    var DateOfService : String = ""
    var PatientFirstVisit : String = ""
    var PatientSex : String = ""
    var WhoSurvey : String = ""
    var NumofdayinHos : String = ""
    
    var comment : String = ""
    var PatientName : String = ""
    var Telephone : String = ""
    
    
    func getDateString(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            DateOfService = "Date of Service:"
        case  "Jpn" :
            DateOfService = "診療日:"
        case  "Bur" :
             DateOfService = "၁။ ေဆးကုသမႈခံယူသည့္ေနစဲြ Date of Service:"
        case "Tha" :
            DateOfService = "วันที่รับบริการ:"
        case "Arab" :
            DateOfService = "تاريخ تلقي الخدمة....."
            
        default :
            DateOfService = "Date of Service:"
            
            
        }
        
        return DateOfService
        
    }
    
    
    
    func getPatientFirstVisit(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientFirstVisit = "Patient’s first visit"
        case  "Jpn" :
            PatientFirstVisit = "この病院は初診ですか。"
        case  "Bur" :
            PatientFirstVisit = "၂။ လူနာအသစ္  Patient’s first visit"
        case "Tha" :
            PatientFirstVisit = "ท่านใช้บริการโรงพยาบาลครั้งแรก"
        case "Arab" :
            PatientFirstVisit = " تلقيت الخدمة في هذا المستشفى للمرة الأولى  "
            
        default :
            PatientFirstVisit = "Patient’s first visit"
            
            
        }
        
        return PatientFirstVisit
        
    }
    
    
    func getPatientSex(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientSex = "Patient’s sex"
        case  "Jpn" :
            PatientSex = "性別"
        case  "Bur" :
            PatientSex = "၃။(Patient’s sex)"
        case "Tha" :
            PatientSex = "เพศ"
        case "Arab" :
            PatientSex = " الجنس "
            
        default :
            PatientSex = "Patient’s sex"
            
            
        }
        
        return PatientSex
        
    }
    
    
    func getWhoSurvey(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientSex = "Who is completing survey"
        case  "Jpn" :
            PatientSex = "アンケート回答者 "
        case  "Bur" :
            PatientSex = "၅။ ေမးခြန္းမ်ားကိုျဖည့္စြက္ေပးမည့္သူ   Who is completing survey"
        case "Tha" :
            PatientSex = "สถานะผู้กรอกแบบสอบถาม"
        case "Arab" :
            PatientSex = "المجيب على الاستبيان  "
            
        default :
            PatientSex = "Who is completing survey"
            
            
        }
        
        return PatientSex
        
    }
    
    
    func getNumofdayinHos(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            NumofdayinHos = "Number of days in hospital "
        case  "Jpn" :
            NumofdayinHos = ".病室番号:"
        case  "Bur" :
            NumofdayinHos = "၆။ ေဆးရံုတတ္သည့္ ရက္အေရအတြက္ "
        case "Tha" :
            NumofdayinHos = "ห้องพักผู้ป่วย"
        case "Arab" :
            NumofdayinHos = "Number of days in hospital"
            
        default :
            NumofdayinHos = "Number of days in hospital "
            
            
        }
        
        return NumofdayinHos
        
    }
    

    
    func getcomment(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            comment = "COMMENT:"
        case  "Jpn" :
            comment = "その他ご意見がございましたらご記入ください"
        case  "Bur" :
            comment = "အၾကံျပဳခ်က္။ (COMMENT):"
        case "Tha" :
            comment = "ข้อเสนอแนะเพิ่มเติม:"
        case "Arab" :
            comment = "من أجل النهوض بخدماتنا، ما أكثر الأمور التي تحتاح إلى مزيد من التحسينفي رأيك؟"
            
        default :
            comment = "COMMENT:"
            
            
        }
        
        return comment
        
    }
    
    
    
    func getPatientName(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            PatientName = "Patient’s Name (Optional):"
        case  "Jpn" :
            PatientName = "お名前 "
        case  "Bur" :
            PatientName = "လူနာအမည္(Patient’s Name) (Optional):"
        case "Tha" :
            PatientName = "ชื่อ-สกุล:"
        case "Arab" :
            PatientName = "في حال رغبتك في أن نتصل بك يرجى ذكر الاسم:"
            
        default :
            PatientName = "Patient’s Name (Optional):"
            
            
        }
        
        return PatientName
        
    }




    func getTelephone(Language : String)->String{
        
        switch Language {
            
        case "Eng" :
            Telephone = "Telephone (Optional):"
        case  "Jpn" :
            Telephone = "お電話番号 "
        case  "Bur" :
            Telephone = "ဖုန္း(Telephone) (Optional):"
        case "Tha" :
            Telephone = "โทรศัพท์:"
        case "Arab" :
            Telephone = "………....البريد الإلكتروني……….."
            
        default :
            Telephone = "Telephone (Optional):"
            
            
        }
        
        return Telephone
        
    }


    
    
  
}
