//
//  TeenViewController.swift
//  ObjCLearning
//
//  Created by Никита Гундорин on 27.03.2020.
//  Copyright © 2020 Никита Гундорин. All rights reserved.
//

import UIKit

class TeenViewController: UIViewController {
    var name: String!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let name = name else { return }
        label.text = "Hi, \(name)"
    }
}
