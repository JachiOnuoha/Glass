//
//  ViewController.swift
//  Glass
//
//  Created by Jachimike Onuoha on 7/9/19.
//  Copyright © 2019 Jachimike Onuoha. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    let pdfTitle  = "Research"
    let pdf2Title = "Git Cheatsheet"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pdfButton(_ sender: Any) {
        if let url = Bundle.main.url(forResource: pdfTitle, withExtension: "pdf"){
            let urlRequest = URLRequest(url: url)
            let webView = UIWebView(frame:self.view.frame)
            webView.loadRequest(urlRequest as URLRequest)
            
            // Create new View controller and allows you to switch subview to it
            let pdfVC = UIViewController()
            pdfVC.view.addSubview(webView)
            pdfVC.title = pdfTitle
            self.navigationController?.pushViewController(pdfVC, animated: true)
        }
        
    }
    
    @IBAction func pdf2Button(_ sender: Any) {
        // Create new View controller and allows you to switch subview to it
        if let url = Bundle.main.url(forResource: pdf2Title, withExtension: "pdf"){
            let urlRequest = URLRequest(url: url)
            let webView = UIWebView(frame:self.view.frame)
            webView.loadRequest(urlRequest as URLRequest)
            
            let pdf2VC = UIViewController()
            pdf2VC.view.addSubview(webView)
            pdf2VC.title = pdf2Title
            self.navigationController?.pushViewController(pdf2VC, animated: true)
        }
    }
}

