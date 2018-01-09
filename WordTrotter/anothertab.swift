//
//  anothertab.swift
//  WordTrotter
//
//  Created by Brian Guo on 8/25/17.
//  Copyright © 2017 Brian Guo. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController{
    
    var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView = WKWebView()
        let myURL = URL(string:"https://www.bignerdranch.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
        view = webView
    }
    
}
