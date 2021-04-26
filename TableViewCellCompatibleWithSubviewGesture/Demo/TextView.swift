//
//  TextView.swift
//  TableViewCellCompatibleWithSubviewGesture
//
//  Created by Woody Liu on 2021/4/26.
//

import UIKit

class TextView: UITextView {
        
    weak var selectedDelegate: TransferDidSelectedTouchViewDelegate?

}


extension TextView: UIGestureRecognizerDelegate {
    override func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        let name = gestureRecognizer.name
        if name != "UITextInteractionNameLinkTap" && name != "UITextInteractionNameInteractiveLoupe" {
            selectedDelegate?.didSelected()
        }
        return true
    }
}

