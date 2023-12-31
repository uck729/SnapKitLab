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
    lazy var button = UIButton()
    lazy var smileImage = UIImageView(image: ImageAsset.Image.smile)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        tableView.layer.borderWidth = 1
        tableView.backgroundColor = .orange
        tableView.snp.makeConstraints { make -> Void in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
            make.width.equalTo(self.view.snp.width)
        }

        view.addSubview(box)
        box.backgroundColor = .green
        box.snp.makeConstraints { (make) -> Void in
            make.width.equalTo(50)
            make.height.equalTo(self.view.snp.height).multipliedBy(0.5)
            make.center.equalTo(self.view)
        }

        view.addSubview(button)
        button.setTitle(L10n.welcomeScreenTitle, for: .normal)
        button.addTarget(self, action: #selector(trigger), for: .touchUpInside)
        button.snp.makeConstraints { make -> Void in
            make.width.equalTo(100)
            make.height.equalTo(60)
            make.center.equalTo(self.view)
        }

        view.addSubview(smileImage)
        smileImage.snp.makeConstraints { make -> Void in
            make.width.equalTo(100)
            make.height.equalTo(100)
            make.centerX.equalTo(self.view)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom)
        }

        view.backgroundColor = ColorAsset.Color.snapDark
    }

    func setPurpleViewVisible(_ percentage: Float) {
        box.snp.remakeConstraints { make in
            make.width.equalTo(50)
            make.height.equalTo(self.view.snp.height).multipliedBy(percentage)
            make.center.equalTo(self.view)
        }

        UIView.animate(withDuration: Double(percentage) * 0.7 + 0.1, animations: {
            self.view.layoutIfNeeded()
        })
    }

    @objc func trigger(_ sender: UIControl) {
        let number = Float(Int.random(in: 1..<80)) / 100
        setPurpleViewVisible(number)
    }
}

