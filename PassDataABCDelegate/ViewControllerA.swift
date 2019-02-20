//
//  ViewController.swift
//  PassDataABCDelegate
//
//  Created by Vũ on 2/20/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewControllerA: UIViewController, UpdateDataForViewControllerA {
    

    @IBOutlet weak var textFieldA: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    func updateData(text: String) {
        textFieldA.text = text
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vcB = segue.destination as? ViewControllerB else { return }
            vcB.dataA = textFieldA.text
            vcB.delegateA = self
        
    }


}

