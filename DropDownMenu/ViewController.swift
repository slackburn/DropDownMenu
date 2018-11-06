//
//  ViewController.swift
//  DropDownMenu
//
//  Created by Codenation13 on 06/11/2018.
//  Copyright © 2018 samblackburn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var selectButton: UIButton!
    @IBOutlet var items: [UIButton]!
    
    
    @IBAction func selectButtonSelected(_ sender: UIButton) {
        selectButton.titleLabel?.textAlignment = NSTextAlignment.center
        selectButton.setTitleColor(UIColor.black, for: .normal)
        items.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: { Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func itemsSelected(_ sender: UIButton) {
        selectButton.titleLabel?.text = sender.titleLabel?.text //changes menu label
        items.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBOutlet weak var selectBtn2: UIButton!
    @IBOutlet var itemsList: [UIButton]!
    
    @IBAction func selectBtnSelected2(_ sender: UIButton) {
        selectBtn2.titleLabel?.textAlignment = NSTextAlignment.center
        selectBtn2.setTitleColor(UIColor.black, for: .normal)
        itemsList.forEach { (Button) in
            UIView.animate(withDuration: 0.3, animations: { Button.isHidden = !Button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    @IBAction func itemsListSelected(_ sender: UIButton) {
        selectBtn2.titleLabel?.text = sender.titleLabel?.text //changes menu label
        itemsList.forEach { (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
        }
    }
    
    

}

