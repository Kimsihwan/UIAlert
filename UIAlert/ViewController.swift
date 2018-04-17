//
//  ViewController.swift
//  UIAlert
//
//  Created by D7702_10 on 2018. 4. 17..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func btnCamera(_ sender: Any) {
        let myAlret = UIAlertController(title : "알림", message: "설정된 시간이 되었습니다.!", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler : {(myaction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
            })
        
        let cancelAction = UIAlertAction(title: "취소", style : .cancel, handler : {(myaction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        })
        
        let testAction = UIAlertAction(title: "삭제", style: .destructive, handler: {(myaction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
    myAlret.addAction(okAction)
    myAlret.addAction(cancelAction)
    myAlret.addAction(testAction)
    
    present(myAlret, animated: true, completion: nil)
}
}

