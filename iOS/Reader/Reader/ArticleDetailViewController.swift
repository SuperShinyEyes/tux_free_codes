//
//  ArticleDetailViewController.swift
//  Reader
//
//  Created by YOUNG on 9/19/15.
//  Copyright © 2015 tux. All rights reserved.
//

import UIKit

class ArticleDetailViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    var article: Article?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = article?.title
        if let articleURL = article?.url {
            let request = NSURLRequest(URL: articleURL)
            webView.loadRequest(request)
        }
    }
    
}