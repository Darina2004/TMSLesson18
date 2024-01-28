//
//  ViewController.swift
//  TMSLesson18
//
//  Created by Mac on 25.01.24.
//

import UIKit

class ViewController: UIViewController {
    
    
    let customView = CustomView(frame: CGRect(x: 0, y: 0, width: 400, height: 600))
    var keyboardHandler: KeyboardNotificationHandler?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        keyboardHandler = KeyboardNotificationHandler(view: customView.mainTextField)
        
        view.addSubview(customView)
        addGestureRecognizers()
        
        customView.button.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
        keyboardHandler?.subscribeToKeyboardNotifications()
    }
    
    
    private func addGestureRecognizers() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func submitButtonPressed() {
        customView.mainLabel.text = customView.mainTextField.text
        customView.mainTextField.text = ""
    }
    
    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}


//Написать приложение с одним экраном, на котором чуть ниже центра будет располагаться UITextField, ниже UITextField кнопка, а сверху UITextField - UILabel.
//При нажатии на кнопку, текст из UITextField будет отображаться в UILabel, UITextField при этом очищается.
//Обработать поднятие текстового поля при появлении клавиатуры, чтобы клавиатура не перекрывала текстовое поле.
//По нажатию на любое место на экране, скрывать клавиатуру.
