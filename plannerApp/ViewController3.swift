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
        let alert = UIAlertController(title: "Error", message: "Same Date and Title", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        let addTitle = titleOutlet.text!
        let adddate = dateOutlet.text!
        
        if AppData.title.description.lowercased().contains(addTitle.lowercased()) && AppData.date.description.lowercased().contains(adddate.lowercased())
        {
            present(alert, animated: true)
        }
        else
        {
            AppData.title.append(addTitle)
            AppData.date.append(adddate)
        }
        
        var addDesc = detailsOutlet.text!
        AppData.desc.append(addDesc)
        

    }
    
    
    
}
