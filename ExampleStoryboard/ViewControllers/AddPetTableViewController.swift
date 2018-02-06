//
//  AddPetTableViewController.swift
//  ExampleStoryboard
//
//  Created by Nguyen Huu Minh on 2/6/18.
//  Copyright © 2018 Steadfast. All rights reserved.
//

import UIKit

class AddPetTableViewController: UITableViewController {
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldTitle: UITextField!
    
    var pet: Pet?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            textFieldName.becomeFirstResponder()
        } else if indexPath.section == 1 {
            textFieldTitle.becomeFirstResponder()
        }
    }
    
    /* Unwind Segue
       SavePetDetailSegue
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "SavePetDetailSegue" {
            self.pet = Pet(name: self.textFieldName.text ?? "Default name", title: self.textFieldTitle.text ?? "Default title")
        }
    }
}
