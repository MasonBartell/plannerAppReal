//
//  ViewController.swift
//  plannerApp
//
//  Created by MASON BARTELL on 11/14/23.
//

import UIKit
//Satic Vars
class AppData {
    static var title = [String]()
    static var date = [String]()
    static var desc = [String]()
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let defaults = UserDefaults.standard
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewOutlet.dataSource = self
        tableViewOutlet.delegate = self

        AppData.title = (defaults.array(forKey: "theTitles") as? [String] ?? [""])
        
        AppData.date = (defaults.array(forKey: "theDates") as? [String] ?? [""])
        
        AppData.desc = (defaults.array(forKey: "theDescs") as? [String] ?? [""])
        


        
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        tableViewOutlet.reloadData()
    }
    
    @IBAction func addButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "Addsegue", sender: self)
    }
    
    
    
    @IBAction func saveAction(_ sender: UIButton) {
        
        defaults.set(AppData.title, forKey: "theTitles")
        defaults.set(AppData.date, forKey: "theDates")
        defaults.set(AppData.desc, forKey: "theDescs")
        print("saved")
        
    }
    
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return AppData.date.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell")!
        cell.textLabel?.text = AppData.title[indexPath.row]
        cell.detailTextLabel?.text = AppData.date[indexPath.row]
               return cell
    }
   
    
    
    //Delete
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            AppData.title.remove(at: indexPath.row)
            AppData.date.remove(at: indexPath.row)
            AppData.desc.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .top)
            
        }
    }
    }
    
    
    
    
    
    


