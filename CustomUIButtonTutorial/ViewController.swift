//
//  ViewController.swift
//  CustomUIButtonTutorial
//
//  Created by MICHAEL ADU DARKO on 8/22/20.
//  Copyright © 2020 Bronzy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    lazy var buttonOne: CustomButton = {
        let button = CustomButton(title: "Button 1")
       return button
    }()
    
    lazy var buttonTwo: CustomButton = {
        let button = CustomButton(title: "Button 2")
       return button
    }()
    
    lazy var buttonThree: CustomButton = {
        let button = CustomButton(title: "Button 3")
       return button
    }()
    
    lazy var buttonFOUR: CustomButton = {
           let button = CustomButton(title: "Button 4")
          return button
       }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.9996390939, green: 1, blue: 0.9997561574, alpha: 1)
        setUpContraints()
    }

    
    //MARK: Helpers
    
    func setUpContraints(){
        
//        view.addSubview(buttonOne)
//        buttonOne.translatesAutoresizingMaskIntoConstraints = false
//        buttonOne.heightAnchor.constraint(equalToConstant: 45).isActive = true
//        buttonOne.widthAnchor.constraint(equalToConstant: 250).isActive = true
//        buttonOne.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        buttonOne.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
//
//        view.addSubview(buttonTwo)
//        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
//        buttonTwo.heightAnchor.constraint(equalToConstant: 45).isActive = true
//        buttonTwo.widthAnchor.constraint(equalToConstant: 250).isActive = true
//        buttonTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
//        buttonTwo.topAnchor.constraint(equalTo: buttonOne.bottomAnchor, constant: 20).isActive = true
        
        
        let stack = UIStackView(arrangedSubviews: [buttonOne, buttonTwo, buttonThree,buttonFOUR])
        stack.axis = .vertical
        stack.spacing = 15
        stack.distribution = .fillEqually
        
        
        view.addSubview(stack)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.widthAnchor.constraint(equalToConstant: 250).isActive = true
        stack.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -200).isActive = true
        
        
    }

}

