//
//  Answer.swift
//  IPadApp
//
//  Created by SVH IT on 11/11/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import Foundation
import UIKit

struct Answer {
    var answerName : String
    var answerID : String
    var AnsImage : UIImage
    var SelectC : Bool = false
    
   
    
    init(answerName : String ,answerID : String ,AnsImage : UIImage, SelectC :Bool){
        self.answerName = answerName
        self.answerID = answerID
        self.AnsImage = AnsImage
        self.SelectC = SelectC
       
        
    }
}
