//
//  TableViewCell.swift
//  TableViewCellCompatibleWithSubviewGesture
//
//  Created by Woody Liu on 2021/4/26.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    weak var selectedDelegate: TransferDidSelectedCellDelegate?
    
    var indexPath: IndexPath?
    
    lazy var textView: TextViewV2 = {
        let tv = TextViewV2()
        tv.dataDetectorTypes = [.link]
        tv.isEditable = false
        tv.isScrollEnabled = false
//        tv.selectedDelegate = self
        tv.font = .systemFont(ofSize: 15)
        contentView.addSubview(tv)
        tv.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tv.topAnchor.constraint(equalTo: contentView.topAnchor),
            tv.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            tv.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            tv.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        return tv
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    
    
}


extension TableViewCell: TransferDidSelectedTouchViewDelegate {
    
    func didSelected() {
        selectedDelegate?.didSelected(indexPath: indexPath)
    }
    
}
