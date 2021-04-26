//
//  TextViewV2.swift
//  TableViewCellCompatibleWithSubviewGesture
//
//  Created by Woody on 2021/4/26.
//

import UIKit

class TextViewV2: UITextView { }

extension TextViewV2: UIGestureRecognizerDelegate {
    
    override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        let name = gestureRecognizer.name
        if name != "UITextInteractionNameLinkTap" && name != "UITextInteractionNameInteractiveLoupe" {
            gestureRecognizer.cancelsTouchesInView = false
        }
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        superview?.superview?.touchesBegan(touches, with: event)
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        superview?.superview?.touchesEnded(touches, with: event)
    }
}
