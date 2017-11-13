//
//  ViewController.swift
//  WkWebViewTest
//
//  Created by Johannes Hubert on 13.11.17.
//  Copyright © 2017 Johannes Hubert. All rights reserved.
//

import UIKit
import WebKit


class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!

    private var webViews: [WKWebView] = []
    
    private let websites = ["https://www.google.com","https://www.facebook.com","https://www.twitter.com","https://www.iteratec.com"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for website in self.websites {
            let webView = WKWebView(frame: .zero)
            webView.load(URLRequest(url: URL(string: website)!))
            webView.isUserInteractionEnabled = false
            self.webViews.append(webView)
            self.scrollView.addSubview(webView)
        }
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.scrollView.setNeedsLayout()
        self.scrollView.layoutIfNeeded()
        
        let pageWidth = self.scrollView.bounds.width
        let pageHeight = self.scrollView.bounds.height
        
        for (index, webView) in self.webViews.enumerated() {
            let xOrigin = pageWidth * CGFloat(index)
            webView.frame = CGRect(x: xOrigin, y: 0, width: pageWidth, height: pageHeight)
        }
        
        self.scrollView.contentSize = CGSize(width: pageWidth * CGFloat(self.webViews.count), height: pageHeight)
    }
}

