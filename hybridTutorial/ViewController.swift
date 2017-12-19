//
//  ViewController.swift
//  hybridTutorial
//
//  Created by 전세호 on 2017. 12. 20..
//  Copyright © 2017년 picklecode. All rights reserved.
//

import UIKit
import WebKit

//class ViewController: UIViewController, WKScriptMessageHandler, WKUIDelegate {
//    var webView: WKWebView?
//    var host = "http://picklecode.co.kr"
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        webView = initJavascriptBridge()
//        self.webView!.uiDelegate = self
//    }
//
//    func initJavascriptBridge() -> WKWebView{
//        let contentController = WKUserContentController()
//        contentController.add(
//            self,
//            name: "ios"
//        )
//
//        let config = WKWebViewConfiguration()
//        config.userContentController = contentController
//        let webView: WKWebView = WKWebView(frame: self.view.frame, configuration: config)
//        let url = NSURL(string: host)
//        let request = NSURLRequest(url: url! as URL)
//
//        webView.load(request as URLRequest)
//        self.view.addSubview(webView)
//
//        return webView
//    }
//
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    func userContentController(_ userContentController: WKUserContentController!, didReceive message: WKScriptMessage!){
//        print("got message: \(message.body)")
//    }
//
//    func webView(_webView: WKWebView, runJavaScriptAlertPanelWithMessage message: String, initiatedByFrame frame: WKFrameInfo, completionHandler: @escaping () -> Void){
//        print("alert called")
//
//        let alertController = UIAlertController(title: nil, message: message, preferredStyle: .actionSheet)
//
//        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: {(action) in
//            completionHandler()
//        }))
//
//        self.present(alertController, animated: true, completion: nil)
//    }
//
//}


class ViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {
    
    var webView: WKWebView!
    var activityIndicator: UIActivityIndicatorView = UIActivityIndicatorView()
    
    
    override func loadView() {
        super.loadView()
        webView = WKWebView(frame: self.view.frame)
        webView.uiDelegate = self
        webView.navigationDelegate = self
        
        self.view = self.webView!
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myBlog = "http://www.picklecode.co.kr"
        let url = URL(string: myBlog)
        let request = URLRequest(url: url!)
        webView.load(request)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

