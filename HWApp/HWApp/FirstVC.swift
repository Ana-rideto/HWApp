//
//  FirstVC.swift
//  HWApp
//
//  Created by Mac on 16.02.2022.
//

import Foundation
import UIKit

class FirstVC: UIViewController {
    
    private lazy var button: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(red: 1.00, green: 0.95, blue: 0.74, alpha: 1.00)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel!.font = UIFont(name: "AppleSDGothicNeo-Thin" , size: 50)
        button.setTitle("Add colors!", for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(addColors(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    @objc func addColors(sender: UIButton?){
        navigationController?.pushViewController(SecondVC(), animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        setupSubview()
        setupConstraints()
    }
    func setupSubview(){
        view.addSubview(button)
    }
    func setupConstraints(){
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
