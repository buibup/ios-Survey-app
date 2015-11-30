//
//  DataFile.swift
//  IPadApp
//
//  Created by SVH IT on 11/11/2558 BE.
//  Copyright © 2558 SVH IT. All rights reserved.
//

import UIKit

class DataFile: NSObject {
    
    
    
    func getData_H1 ()-> Array<Answer>{
        var mTempArray = Array<Answer>()
        
        
        let Choice1 = Answer(answerName:"Very Poor (1)",answerID :"1",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice1)
        
        
        let Choice2 = Answer(answerName:"Poor (2)",answerID :"2",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice2)
        
        
        
        let Choice3 = Answer(answerName:"Fair (3)",answerID :"3",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice3)
        
        
        
        let Choice4 = Answer(answerName:"Good (4)",answerID :"4",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice4)
        
        
        let Choice5 = Answer(answerName:"Very Good (5)",answerID :"5",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice5)

        
        return mTempArray
    }
    
    
    
    
    
    func getData_H2 ()-> Array<Answer>{
        

        var mTempArray = Array<Answer>()
        
        
        let Choice1 = Answer(answerName:"Never (1)",answerID :"1",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice1)
        
        
        let Choice2 = Answer(answerName:"Sometimes (2)",answerID :"2",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice2)
        
        
        
        let Choice3 = Answer(answerName:"Usually (3)",answerID :"3",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice3)
        
        
        
        let Choice4 = Answer(answerName:"Always (4)",answerID :"4",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice4)
        
        
        
        return mTempArray
    }

    
    
    func getData_Choice10 ()-> Array<Answer>{
        var mTempArray = Array<Answer>()
        
        
        let Choice0 = Answer(answerName:"0 (Worst)",answerID :"0",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice0)
        
        
        let Choice1 = Answer(answerName:"1",answerID :"1",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice1)
        
        
        
        let Choice2 = Answer(answerName:"2",answerID :"2",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice2)
        
        
        
        let Choice3 = Answer(answerName:"3",answerID :"3",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice3)
        
        
        let Choice4 = Answer(answerName:"4",answerID :"4",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice4)
        
        
        let Choice5 = Answer(answerName:"5",answerID :"5",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice5)
        
        
        let Choice6 = Answer(answerName:"6",answerID :"6",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice6)
        
        let Choice7 = Answer(answerName:"7",answerID :"7",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice7)
        
        let Choice8 = Answer(answerName:"8",answerID :"8",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice8)
        
        let Choice9 = Answer(answerName:"9",answerID :"9",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice9)
        
        
        let Choice10 = Answer(answerName:"10 (Definitely yes)",answerID :"10",AnsImage : UIImage(named: "SelectC")!,SelectC : false)
        mTempArray.append(Choice10)
        
        
        return mTempArray
    }
    
    
    

}
