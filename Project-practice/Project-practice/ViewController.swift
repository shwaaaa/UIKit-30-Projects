//
//  ViewController.swift
//  Project-practice
//
//  Created by 이승화 on 12/15/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var myNameTextLabl: UILabel = {
        let lable = UILabel()
        lable.translatesAutoresizingMaskIntoConstraints = false
        lable.text = "테스트 즁입미다"
        lable.textAlignment = .center
        lable.backgroundColor = .white
        return lable
    }()
    
    lazy var changeButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("인사해주세요", for: .normal)
        button.backgroundColor = .blue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(myNameTextLabl)
        myNameTextLabl.widthAnchor.constraint(equalToConstant: 200).isActive = true
        myNameTextLabl.heightAnchor.constraint(equalToConstant: 50).isActive = true
        myNameTextLabl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myNameTextLabl.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        view.addSubview(changeButton)
        changeButton.widthAnchor.constraint(equalToConstant: 200).isActive = true
        changeButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        changeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        changeButton.topAnchor.constraint(equalTo: myNameTextLabl.bottomAnchor, constant: 200).isActive = true
        
        changeButton.addTarget(self, action: #selector(didTapChangeNameButton), for: .touchUpInside)
    }
    
    @objc func didTapChangeNameButton() {
        myNameTextLabl.text = "후히히"
    }
}

