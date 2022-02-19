//
//  SixthVC.swift
//  HWApp
//
//  Created by Mac on 12.02.2022.
//

import Foundation
import UIKit

class SixthVC: UIViewController {
    
    let mainColor = UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00)
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 0.51, green: 0.36, blue: 0.90, alpha: 0.5)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel!.font = UIFont(name: "AppleSDGothicNeo-Thin" , size: 50)
        button.setTitle("What time is it now?", for: .normal)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(showTime(sender:)), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var label: UILabel = {
    let label = UILabel()
        label.sizeToFit()
        label.textAlignment = .center
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 30)
        label.numberOfLines = 2
        label.text = ""
        
        return label
    }()
    
    @objc func showTime(sender: UIButton?){
        let date = Date()
        let formatter =  DateFormatter()
        formatter.timeZone = .current
        formatter.locale = .current
        label.text = date.formatted(date: .complete, time: .shortened)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = mainColor
        tabBarItem.image = UIImage(systemName: "circle")
        setupSubview()
        setupConstraints()
    }
    func setupSubview(){
        view.addSubview(button)
        view.addSubview(label)
    }
    func setupConstraints(){
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 270).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        label.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}
    

