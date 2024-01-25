//
//  KeyboardNotificationHandler .swift
//  TMSLesson18
//
//  Created by Mac on 25.01.24.
//

import UIKit

class KeyboardNotificationHandler {
    
    let view: UIView

      init(view: UIView) {
          self.view = view
      }

    func subscribeToKeyboardNotifications() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)

    }
    
    func unsubscribeFromKeyboardNotifications() {
        NotificationCenter.default.removeObserver(self)

    }
    
    @objc private func keyboardWillShow(notification: Notification) {
        if let keyboardFrame = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect {
            let keyboardHeight = keyboardFrame.height
            let textFieldMaxY = view.frame.maxY
            let screenHeight = UIScreen.main.bounds.height
            let offset = textFieldMaxY - (screenHeight - keyboardHeight)
            if offset > 0 {
                view.frame.origin.y -= offset
            }
        }
    }
    
    @objc private func keyboardWillHide(notification: Notification) {
           UIView.animate(withDuration: 0.3) {
               self.view.frame.origin.y = 480
           }
       }
   }

