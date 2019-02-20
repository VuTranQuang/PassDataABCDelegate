//
//  ViewControllerB.swift
//  PassDataABCDelegate
//
//  Created by Vũ on 2/20/19.
//  Copyright © 2019 Vũ. All rights reserved.
//

import UIKit
protocol UpdateDataForViewControllerA {
    func updateData(text: String)
}

class ViewControllerB: UIViewController {

    @IBOutlet weak var textFieldB: UITextField!
    var dataA: String?
    var delegateA: UpdateDataForViewControllerA?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textFieldB.text = dataA
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vcC = segue.destination as? ViewControllerC else {return}
        vcC.dataB = textFieldB.text
        vcC.delegateA = delegateA
    }

}
