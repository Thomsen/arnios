//
//  ListTodoController.swift
//  arnios
//
//  Created by Thomsen Wang on 17/6/2021.
//  Copyright © 2021 Personal. All rights reserved.
//

import UIKit
import SnapKit


class ListTodoViewController: UIViewController {
    
    let containerView: UIStackView = {
        let view = UIStackView()
        return view
    }()
    
    var urlFiled: UITextField = {
        var field = UITextField(frame: CGRect(x: 0, y: 100, width: UIScreen.main.bounds.width, height: 40))
        let placeholder = NSAttributedString(string: "add todo")
        field.attributedPlaceholder = placeholder
        field.keyboardType = UIKeyboardType.default
        field.becomeFirstResponder()
        return field
    }()
    
    var urlButton: UIButton = {
        var button = UIButton.init(type: .custom)
        button.backgroundColor = UIColor.red
        button.frame = CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: 40)
        button.setTitle("goto", for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let purpleView = UIView()
        purpleView.backgroundColor = UIColor.blue
        purpleView.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 60)
        containerView.addSubview(purpleView)
        
        containerView.addSubview(urlFiled)
        
        urlButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)

        containerView.addSubview(urlButton)

        
        view.addSubview(containerView)
        
        // import SnapKit
        containerView.snp.makeConstraints {
            $0.top.equalTo(purpleView.snp.bottom)
            $0.left.right.equalTo(0)
        }
    }
    
    @objc func buttonClicked() {
      print("The button has been tapped!")
    }
}
