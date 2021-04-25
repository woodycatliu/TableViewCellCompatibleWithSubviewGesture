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
        if gestureRecognizer.name != "UITextInteractionNameLinkTap" {
            selectedDelegate?.didSelected()
        }
        return true
    }
}
