//
//  protocol.swift
//  TableViewCellCompatibleWithSubviewGesture
//
//  Created by Woody Liu on 2021/4/26.
//

import UIKit

/// tableViewCell delegate
/// transfer cell will be selected
protocol TransferDidSelectedCellDelegate: class {
    func didSelected(indexPath: IndexPath?)
}

/// touch View delegate
/// tableViewCellContentView subview
/// transfer cell will be seleceted
protocol TransferDidSelectedTouchViewDelegate: class {
    func didSelected()
}
