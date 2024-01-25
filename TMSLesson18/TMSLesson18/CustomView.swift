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
     
        mainLabel.frame = CGRect(x: 0, y: 350, width:  frame.width, height: 50)
        mainLabel.textAlignment = .center
        mainLabel.backgroundColor = #colorLiteral(red: 0.668915391, green: 0.5090507269, blue: 1, alpha: 1)
        mainLabel.textColor = UIColor.white
        mainLabel.font = UIFont.systemFont(ofSize: 30)
        addSubview(mainLabel)
        
      
        mainTextField.frame = CGRect(x: 50, y: 480, width: frame.width - 100, height: 50)
        mainTextField.borderStyle = .roundedRect
        mainTextField.backgroundColor = UIColor.systemGray5
        mainTextField.textColor = UIColor.darkGray
        addSubview(mainTextField)
        
     
        button.frame = CGRect(x: 50, y: 540, width: frame.width - 100, height: 50)
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.systemIndigo , for: .normal)
        addSubview(button)
    }
}

