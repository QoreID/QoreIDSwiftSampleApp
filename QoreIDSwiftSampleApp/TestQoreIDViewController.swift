//
//  TestQoreIDViewController.swift
//  QoreIDSwiftSampleApp
//
//  Created by Guru King on 04/10/2023.
//

import UIKit
import QoreIDSDK

class TestQoreIDViewController:UIViewController{
    
    override func viewDidLoad() {
        
       
        view.backgroundColor = .white
    }
    
    func onQoreIdResultReceived(result: QoreIDResult?) {
        if let result = result {
            print("---> QoreIDResult:")
            print("---> \(result)")

            if let errorResult = result as? ErrorResult {
                // Handle error
                print("error from sdk: \(errorResult.message)")
                //  toastLong(errorResult.message)
            } else if let successResult = result as? SuccessResult {
                // Handle success
                if let message = successResult.message {
                    print("success from sdk: \(message)")
                }
            }
        }
    }
}
