//
//  ViewController.swift
//  ObjCLearning
//
//  Created by Никита Гундорин on 27.03.2020.
//  Copyright © 2020 Никита Гундорин. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var isAdult: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if (isAdult.isOn) {
            performSegue(withIdentifier: "adult", sender: nil) { (segue) in
                print(segue.destination)
                guard let dvc = segue.destination as? AdultViewController else { return }
                dvc.name = self.nameTextField.text
            }
        }
        else {
            performSegue(withIdentifier: "teen", sender: nil) { (segue) in
                print(segue.destination)
                guard let dvc = segue.destination as? TeenViewController else { return }
                dvc.name = self.nameTextField.text
            }
        }
    }
}

