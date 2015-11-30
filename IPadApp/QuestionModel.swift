//
//  QuestionModel.swift
//  IPadApp
//
//  Created by SVH IT on 11/12/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit

class QuestionModel: NSObject {
    
    
    func getQHead1 (BG1 : String,BG2 :String)-> Array<Question>{
        var mTempArray = Array<Question>()
        
        
        let Choice1 = Question(QuestionID :"BG1",Answer : BG1,QuestionName : "**How well did your doctor understand your feelings and did he/she demonstrate Empathy in his/her care?")
        mTempArray.append(Choice1)
        
        
        let Choice2 = Question(QuestionID :"BG2",Answer : BG2 ,QuestionName : "**How well did your Nurse/Staff understand your feelings and did he/she demonstrate Empathy in his/her care?")
            mTempArray.append(Choice2)

        
        
        return mTempArray
    }
    
    
    
    

    
    func getQHead2 (Over1 : String,Over2: String)-> Array<Question>{
        var mTempArray = Array<Question>()
        
        
        let Choice1 = Question(QuestionID :"Over1",Answer : Over1 ,QuestionName : "Using any number from 0 to 10, where 0 is the worst hospital possible and 10 is the best hospital possible, what number would you use to rate this hospital during your stay?")
        mTempArray.append(Choice1)
        
        
        let Choice2 = Question(QuestionID :"Over2",Answer : Over2 ,QuestionName : "Would you recommend this hospital to your friends and family?")
        mTempArray.append(Choice2)
        
        
        
        return mTempArray
    }
    
    
    func getQHead3 (HS1 : String,HS2: String,HS3 :String,HS4 :String)-> Array<Question>{
        var mTempArray = Array<Question>()
        
        
        let Choice1 = Question(QuestionID :"HS1",Answer : HS1 ,QuestionName : "1. How often did nurses treat you with courtesy and respect?")
        mTempArray.append(Choice1)
        
        
        let Choice2 = Question(QuestionID :"HS2",Answer : HS2 ,QuestionName : "2. How often did nurses listen carefully to you?")
        mTempArray.append(Choice2)
        
        
        
        let Choice3 = Question(QuestionID :"HS3",Answer : HS3 ,QuestionName : "3. How often did nurses explain things in a way you could understand?")
        mTempArray.append(Choice3)

        
        
        let Choice4 = Question(QuestionID :"HS4",Answer : HS4 ,QuestionName : "4. After you pressed the call button, how often did you get help as soon as you wanted it?")
        mTempArray.append(Choice4)

        
        
        
        return mTempArray
    }
    
    
    /*func SaveHead2(QuestionID : String,Answer : String ,QuestionName : String )-> Array<Question>{
        var mTempArray = Array<Question>()
        
        
        let Choice1 = Question(QuestionID :QuestionID ,Answer : Answer ,QuestionName : QuestionName)
        mTempArray.append(Choice1)
        
        
        return mTempArray
    }*/



    

}
