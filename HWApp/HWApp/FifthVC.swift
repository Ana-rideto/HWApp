//
//  FifthVC.swift
//  HWApp
//
//  Created by Mac on 12.02.2022.
//

import Foundation
import UIKit

class FifthVC: UIViewController {
    
    let mainColor = UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00)
    
    private lazy var label: UILabel = {
    let label = UILabel()
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 50)
        label.text = "VC №5"
        
        return label
    }()
    
    private lazy var button: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(red: 0.51, green: 0.36, blue: 0.90, alpha: 0.5)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel!.font = UIFont(name: "AppleSDGothicNeo-Thin" , size: 50)
        button.setTitle("Back to root", for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(backToRoot(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    @objc func backToRoot(sender: UIButton?){
        navigationController?.popToRootViewController(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = mainColor
        
        setupSubview()
        setupConstraints()
    }
    func setupSubview(){
        view.addSubview(label)
        view.addSubview(button)
    }
    func setupConstraints(){
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 270).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
}
