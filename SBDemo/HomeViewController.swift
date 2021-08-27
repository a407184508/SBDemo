//
//  HomeViewController.swift
//  SBDemo
//
//  Created by Mac on 2021/8/26.
//

import UIKit

class HomeViewController: UITableViewController {
    @IBOutlet weak var hobby: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//     
//        if identifier == ""  {
//            return false
//        }
//        
//        return true
//    }
//    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let controller = segue.destination as? LayoutViewController {
//            print("todo...\(controller.description)")
//        }
//    }

    @IBAction func unwindToHome(_ unwindSegue: UIStoryboardSegue) {
        if let hobbyController = unwindSegue.source as? HobbyViewController {
            let str = hobbyController.hobbys[hobbyController.tableView.indexPathForSelectedRow?.row ?? 0]
            hobby.text = str
        }
    }
    

}

