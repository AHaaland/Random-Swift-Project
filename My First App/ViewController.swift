//
//  ViewController.swift
//  My First App
//
//  Created by Andrew Haaland on 5/24/17.
//  Copyright © 2017 Andrew Haaland. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myLabel: UILabel!
	@IBOutlet weak var newLabel: UILabel!
	@IBOutlet weak var nameLabel: UILabel!
	@IBOutlet weak var nameTxtBox: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		nameTxtBox.delegate = self
    }
	@IBAction func helloBTN(_ sender: AnyObject) {
		let name = nameTxtBox.text!
		nameLabel.text = "Hello, \(name)!"
		nameTxtBox.resignFirstResponder()
		//oposite is becomeFirstResponder()
	}
	//other way to say done editing text -> shuts KB, when touch anywhere else
	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		view.endEditing(true)
	}
	func textFieldShouldReturn(_ textField: UITextField) -> Bool {
		nameTxtBox.resignFirstResponder()
		return false;
	}
	
	@IBAction func didTouchButton(_ sender: AnyObject) {
		myLabel.text = "Changed with Code!"
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

