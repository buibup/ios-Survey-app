//
//  Question.swift
//  IPadApp
//
//  Created by SVH IT on 11/12/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import Foundation
import UIKit

var TaskMGR :Question = Question ()
var pAns : String = ""
var pAnsid : String = ""
var QuestionID : String = ""
var QuestionName : String = ""
var HeadSec : Int = 0
var pName : String = ""
var pAnsSelect : String = ""
var IndexSelectC : Int = 0
var pAnsSelect2 : String = ""
var pLanguage : String = ""
var IndexPathG : NSIndexPath!


var BG1 : String = ""
var BG2 : String = ""
var Over1 : String = ""
var Over2 : String = ""
var HS1 : String = ""
var HS2 : String = ""
var HS3 : String = ""
var HS4 : String = ""



struct task {
    var QuestionID = "Un-Question"
    var QuestionName = "Un-QuestionName"
    var Answer = "Un-Ans"
}

class  Question:NSObject,NSCoding {
    var QuestionID : String = ""
    var QuestionName : String  = ""
    var Answer : String = ""
    
    var tasks = [task] ()
    override init() {
        super.init()
    }

    
    required init(coder aDecoder : NSCoder){
        QuestionID = aDecoder.decodeObjectForKey("QuestionID") as! String
        Answer = aDecoder.decodeObjectForKey("Answer") as! String
        QuestionName = aDecoder.decodeObjectForKey("QuestionName") as! String
        super.init()
        
    }
        func encodeWithCoder(aCoder : NSCoder){
            aCoder.encodeObject(QuestionID, forKey: "QuestionID")
            aCoder.encodeObject(Answer, forKey: "Answer")
            aCoder.encodeObject(Answer, forKey: "QuestionName")
            
        }
    
    init(QuestionID :String,Answer :String,QuestionName :String) {
        self.QuestionID = QuestionID
        self.Answer = Answer
        self.QuestionName = QuestionName
        
    }
    
    func addQuestion(QuestionID :String,QuestionName :String,answer :String)
    {
        tasks.append(task(QuestionID: QuestionID, QuestionName: QuestionName, Answer: answer))
    }
    
   
        
        
}

