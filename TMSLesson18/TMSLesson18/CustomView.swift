//
//  CustomView.swift
//  TMSLesson18
//
//  Created by Mac on 25.01.24.
//

import UIKit

class CustomView: UIView {

    let mainLabel = UILabel()
    let mainTextField = UITextField()
    let button = UIButton()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupUI()
    }

    private func setupUI() {
     
        mainLabel.frame = CGRect(x: 0, y: 200, width:  frame.width, height: 50)
        mainLabel.textAlignment = .center
        mainLabel.backgroundColor = #colorLiteral(red: 0.668915391, green: 0.5090507269, blue: 1, alpha: 1)
        mainLabel.textColor = UIColor.white
        mainLabel.font = UIFont.systemFont(ofSize: 30)
        addSubview(mainLabel)
        
      
        mainTextField.frame = CGRect(x: 20, y: 480, width: 350, height: 50)
        mainTextField.borderStyle = .roundedRect
        mainTextField.backgroundColor = UIColor.systemGray5
        mainTextField.textColor = UIColor.darkGray
        mainTextField.layer.shadowColor = UIColor.darkGray.cgColor
        mainTextField.layer.shadowOffset = CGSize(width: 5, height: 5)
        mainTextField.layer.shadowOpacity = 0.5
        mainTextField.layer.shadowRadius = 5
        addSubview(mainTextField)
        
     
        button.frame = CGRect(x: 150, y: 560, width: 100, height: 50)
        button.setTitle("Submit", for: .normal)
        button.backgroundColor = #colorLiteral(red: 0.668915391, green: 0.5090507269, blue: 1, alpha: 1)
        button.layer.cornerRadius = 10
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(.white , for: .normal)
        addSubview(button)
    }
}

