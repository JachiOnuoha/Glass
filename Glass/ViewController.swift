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
    let docTitle = "Scripts"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func pdfButton(_ sender: Any) {
        if let url = Bundle.main.url(forResource: pdfTitle, withExtension: "pdf"){
            let urlRequest = URLRequest(url: url)
            let webView = UIWebView(frame: CGRect(x: 0, y: 20, width: 414, height: 896))
            webView.loadRequest(urlRequest as URLRequest)
            self.view.addSubview(webView)
        }
    }
    
    @IBAction func docButton(_ sender: Any) {
    }
}

