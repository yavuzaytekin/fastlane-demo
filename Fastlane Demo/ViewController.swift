//
//  ViewController.swift
//  Fastlane Demo
//
//  Created by Yavuz Aytekin on 13.06.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var label: UILabel = {
        let label = UILabel()
        label.text = NSLocalizedString("firstScreen", comment: "screen")
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    lazy var button: UIButton = {
       let button = UIButton()
        button.setTitle(NSLocalizedString("goToSecond", comment: "screen"), for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.addTarget(self, action: #selector(goToSecond), for: .touchUpInside)
        button.accessibilityIdentifier = "goToSecondButton"
        return button
    }()
    
    let demoTestVariable: Int = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(label)
        view.addSubview(button)
        
        label.frame = CGRect(x: view.center.x - 100, y: view.center.y, width: 200, height: 16)
        button.frame = CGRect(x: view.center.x - 100, y: view.center.y + 16, width: 200, height: 16)
    }

    @objc func goToSecond() {
        let viewController = SecondViewController()
        navigationController?.pushViewController(viewController, animated: true)
        
    }
}

class SecondViewController: UIViewController {
    lazy var label: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        label.text = NSLocalizedString("secondScreen", comment: "screen")
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label)
        label.frame = view.bounds
    }
}

