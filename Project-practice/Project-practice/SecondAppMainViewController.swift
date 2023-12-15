//
//  SecondAppMainViewController.swift
//  Project-practice
//
//  Created by 이승화 on 12/15/23.
//

import UIKit

class SecondAppMainViewController: UIViewController {
    
    let diceImageNameData = ["one", "two", "three", "four", "five", "six"]
    
    lazy var diceImagView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "one"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var changeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("변경 얍", for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        
        view.addSubview(diceImagView)
        diceImagView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        diceImagView.widthAnchor.constraint(equalToConstant: 300).isActive = true
        diceImagView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        diceImagView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(changeButton)
        changeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        changeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        changeButton.topAnchor.constraint(equalTo: diceImagView.bottomAnchor, constant: 200).isActive = true
        
        changeButton.addTarget(self, action: #selector(didTapChangeDiceImageButton), for: .touchUpInside)
    }
    
    @objc func didTapChangeDiceImageButton() {
        diceImagView.image = UIImage(named: diceImageNameData.randomElement() ?? "one")
    }
}
