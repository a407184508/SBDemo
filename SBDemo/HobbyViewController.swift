//
//  HobbyViewController.swift
//  SBDemo
//
//  Created by Mac on 2021/8/26.
//

import UIKit

class HobbyViewController: UITableViewController {
    
    var hobbys = ["看电视", "打游戏", "刷剧", "逛街", "遛狗", "去旅游"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        hobbys.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = hobbys[indexPath.row]
        return cell
    }

}
