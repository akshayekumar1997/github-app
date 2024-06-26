//
//  UIViewController+Extension.swift
//  github app
//
//  Created by SUMSKAR PC on 08/04/24.
//
import UIKit
extension UIViewController{
    func presentGFAletOnMAinThread(title:String,message:String,buttonTitle:String){
        DispatchQueue.main.async{
            let alertVC   = GFAlertVC(title: title, message: message, buttonTitle: buttonTitle)
            alertVC.modalPresentationStyle      = .overFullScreen
            alertVC.modalTransitionStyle        = .crossDissolve
            self.present(alertVC, animated: true)
        }
    }
}
