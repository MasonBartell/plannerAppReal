//
//  ViewController3.swift
//  plannerApp
//
//  Created by MASON BARTELL on 11/15/23.
//

import UIKit

class ViewController3: UIViewController {
    
@IBOutlet weak var titleOutlet: UITextField!
    
@IBOutlet weak var dateOutlet: UITextField!
    
@IBOutlet weak var detailsOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        }

    @IBAction func addButton(_ sender: UIButton) {
       var addTitle = titleOutlet.text!
        AppData.title.append(addTitle)

        var adddate = dateOutlet.text!
        AppData.date.append(adddate)
        
        var addDesc = detailsOutlet.text!
        AppData.desc.append(addDesc)
        

    }
    
    
    
}
