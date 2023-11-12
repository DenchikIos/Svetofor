//
//  ViewController.swift
//  Test
//
//  Created by User on 28.10.2023.
//

import UIKit

class SvetoforController: UIViewController {
    
    var imageRedView = SectionViewController(colorLight: .systemRed)
    var imageYellowView = SectionViewController(colorLight: .systemOrange)
    var imageGreenView = SectionViewController(colorLight: .systemGreen)
    
    
    // MARK: - SistemFunc
    
    
    //Экран Был загружен
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray4
        
        view.addSubview(imageRedView)
        view.addSubview(imageYellowView)
        view.addSubview(imageGreenView)
        view.addSubview(buttonAction)
        setupConstrein()
    }
    
    
  // MARK: - PrivateFunc
    

    private func setupConstrein() {
        
         NSLayoutConstraint.activate([
            buttonAction.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            buttonAction.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30),
            buttonAction.widthAnchor.constraint(equalToConstant: 250),
            buttonAction.heightAnchor.constraint(equalToConstant: 54),
            
            imageRedView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageRedView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            imageRedView.widthAnchor.constraint(equalToConstant: 100),
            imageRedView.heightAnchor.constraint(equalToConstant: 100),
            
            imageYellowView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageYellowView.topAnchor.constraint(equalTo: imageRedView.bottomAnchor, constant: 18),
            imageYellowView.widthAnchor.constraint(equalToConstant: 100),
            imageYellowView.heightAnchor.constraint(equalToConstant: 100),
            
            imageGreenView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            imageGreenView.topAnchor.constraint(equalTo: imageYellowView.bottomAnchor, constant: 18),
            imageGreenView.widthAnchor.constraint(equalToConstant: 100),
            imageGreenView.heightAnchor.constraint(equalToConstant: 100)
            ])
    }
    
    
    // MARK: - Actions
    
    
    private var buttonAction: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Переключатель", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .systemBrown
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
        button.addTarget(nil, action: #selector(onClic), for: .touchUpInside)
        return button
    }()
    
    
    @objc private func onClic() {
        if imageRedView.isOff() && imageYellowView.isOff() && imageGreenView.isOff() {
            imageRedView.turnOn()
        } else if imageRedView.isOn() {
            imageRedView.turnOff()
            imageYellowView.turnOn()
        } else if imageYellowView.isOn() {
            imageYellowView.turnOff()
            imageGreenView.turnOn()
        } else if imageGreenView.isOn() {
            imageGreenView.turnOff()
        }
    }
}

