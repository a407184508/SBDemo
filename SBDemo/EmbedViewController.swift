//
//  EmbedViewController.swift
//  SBDemo
//
//  Created by Mac on 2021/8/26.
//

import UIKit

class EmbedViewController: UIViewController {

    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var stackView: UIStackView!
    
    var embedController: EmbedTableViewController? {
        children.last as? EmbedTableViewController
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func hiddenAction(_ sender: UIButton) {
        
        if buttons.filter { $0.isHidden }.count == 1 {
            buttons.forEach { $0.isHidden = false }
        } else {
            sender.isHidden = !sender.isHidden
        }
    }

    
    @IBAction func layoutAction(_ sender: UIButton) {
        
        if stackView.axis == .horizontal {
            stackView.axis = .vertical
        } else {
            stackView.axis = .horizontal
        }
    }
}
