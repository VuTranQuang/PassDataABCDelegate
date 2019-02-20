//
//  ViewControllerC.swift
//  PassDataABCDelegate
//
//  Created by Vũ on 2/20/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit

class ViewControllerC: UIViewController {

    @IBOutlet weak var textFieldC: UITextField!
    var dataB: String?
    var delegateA: UpdateDataForViewControllerA?
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldC.text = dataB
       
    }

  
    @IBAction func doneButton(_ sender: UIButton) {
        delegateA?.updateData(text: textFieldC.text!)
        navigationController?.popToRootViewController(animated: true)
    }
    
}
