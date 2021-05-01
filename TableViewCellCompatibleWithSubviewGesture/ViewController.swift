//
//  ViewController.swift
//  TableViewCellCompatibleWithSubviewGesture
//
//  Created by Woody Liu on 2021/4/26.
//

import UIKit

class ViewController: UITableViewController {
    
    
    let textContent = "Test, https://www.google.com/,some url https://tw.yahoo.com, it is demo 我不知道該打啥，There are some url, 這裡有很多URL。"

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.description())
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.description(), for: indexPath) as! TableViewCell
        
        cell.indexPath = indexPath
        cell.textView.text = textContent
//        cell.selectedDelegate = self
        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath): do something any what you want")
    }
    
}


extension ViewController: TransferDidSelectedCellDelegate {
    
    func didSelected(indexPath: IndexPath?) {
        guard let indexPath = indexPath else { return }
        tableView.delegate?.tableView?(tableView, didSelectRowAt: indexPath)
    }
    
}
