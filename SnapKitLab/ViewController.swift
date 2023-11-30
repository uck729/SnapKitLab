//
//  ViewController.swift
//  SnapKitLab
//
//  Created by Rex Chen on 2023/11/30.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    lazy var box = UIView()
    lazy var tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(box)
        box.backgroundColor = .green
        box.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(50)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
            make.center.equalTo(self.view)
        }

        view.addSubview(tableView)
        tableView.layer.borderWidth = 1
        tableView.backgroundColor = .orange
        tableView.snp.makeConstraints { make -> Void in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            make.width.equalTo(self.view.snp.width)
        }
    }


}

