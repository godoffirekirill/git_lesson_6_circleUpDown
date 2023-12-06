//
//  ViewController.swift
//  Lesson 6 DZ CircleUpDown
//
//  Created by Кирилл Курочкин on 14.09.2023.
//

import UIKit

class ViewController: UIViewController {
    //MARK: -IBOutlet
    @IBOutlet weak var upButton: UIButton!
    
    @IBOutlet weak var leftButton: UIButton!
    
    @IBOutlet weak var rightButton: UIButton!
    
    @IBOutlet weak var downButton: UIButton!
    let myView = UIView()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        upButton.setTitle("Up", for: .normal)
        leftButton.setTitle("Left", for: .normal)
        rightButton.setTitle("Right", for: .normal)
        downButton.setTitle("Down", for: .normal)
        
        myView.frame = CGRect(x: 120, y: 100, width: 150, height: 150)
        myView.backgroundColor = .magenta
        self.view.addSubview(myView)
        
        myView.layer.cornerRadius = myView.frame.size.width/2
        
        view.addSubview(myView)
        
    }
    //MARK: -IBAction
    @IBAction func upButtonPressed(_ sender: UIButton) {
        if myView.frame.origin.y > 20 {
            self.myView.frame.origin.y -= 10
        }}
    
    
    @IBAction func leftButtonPressed(_ sender: UIButton) {
        if myView.frame.origin.x > 20 {
            self.myView.frame.origin.x -= 10
            
        }}
    @IBAction func righButtonPressed(_ sender: UIButton) {
        if myView.frame.origin.x < 230 {
            self.myView.frame.origin.x += 10
            
        }}
    
    @IBAction func downButtonPressed(_ sender: UIButton) {
        if myView.frame.origin.y < 480 {
            self.myView.frame.origin.y += 10
        }}
    
    //MARK: - extantion
    func createView() {
       
        myView.frame = CGRect(x: 100, y: 50, width: 150, height: 150)
        myView.backgroundColor = .magenta
        self.view.addSubview(myView)
        
        myView.layer.cornerRadius = myView.frame.size.width/2
    }
}

