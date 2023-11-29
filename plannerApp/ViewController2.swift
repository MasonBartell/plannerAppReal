//
//  ViewController2.swift
//  plannerApp
//
//  Created by MASON BARTELL on 11/15/23.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var descOutlet: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        descOutlet.text = AppData.selectedDesc

    }
    

   

}
