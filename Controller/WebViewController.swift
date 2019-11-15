//
//  WebViewController.swift
//  testWork3
//
//  Created by кирилл корнющенков on 12/11/2019.
//  Copyright © 2019 кирилл корнющенков. All rights reserved.
//

import UIKit
import WebKit

class WebViewController: UIViewController{

  
    @IBOutlet weak var web: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(string: "http://www.icndb.com/api/")!
        web.load(URLRequest(url: url))
        
        // Do any additional setup after loading the view.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
