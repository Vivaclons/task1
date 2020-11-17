//
//  ViewController.swift
//  task1
//
//  Created by Шынгыс Еркин on 11/3/20.
//

import UIKit

struct Color {
    var color: Bool?
}
protocol parameters {
    func setBackGroundColor(_ color: Color)
    func makeNavBarHidden()
    func printCurrentVCName()
}

class test: ViewController{
    
}

class ViewController: UIViewController, parameters {
    func setBackGroundColor(_ color: Color) {
        if color.color == true{
            self.view.backgroundColor = .yellow
        } else {
            self.view.backgroundColor = .gray
        }
    }
    
    func makeNavBarHidden() {
        self.navigationController?.isNavigationBarHidden = false
    }
    
    func printCurrentVCName() {
        labelText.text = "Welcome to Hello Page!"
        print("Welcome to First Page!")
    }
    var trfa: Bool?
 

    @IBAction func changeColor(_ sender: Any) {
        trfa = false
        self.setBackGroundColor(Color(color: trfa))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBackGroundColor(Color(color: true ?? nil))
        self.makeNavBarHidden()
        self.printCurrentVCName()
    }
            
    @IBOutlet weak var labelText: UILabel!
    
}

class ViewController2: UIViewController {
    var par = Color(color: true)
    var delegate: ViewController?
  
    func setBackGroundColor() {
        self.view.backgroundColor = .gray
    }
    
    func makeNavBarHidden() {
//        self.navigationController?.isNavigationBarHidden = true
    }
    
    func printCurrentVCName() {
        labelTText.text = "Welcome to Second Page!"
        print("Welcome to Second Page!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setBackGroundColor()
        self.makeNavBarHidden()
        self.printCurrentVCName()
    }
    var color: Bool = false
    @IBAction func changeButton(_ sender: Any) {
        color = false
        delegate?.setBackGroundColor(Color(color: color))
    }
    
    @IBOutlet weak var labelTText: UILabel!
}
