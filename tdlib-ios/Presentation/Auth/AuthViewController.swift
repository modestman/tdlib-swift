//
//  AuthViewController.swift
//  tdlib-ios
//
//  Created by Anton Glezman on 28/09/2019.
//  Copyright © 2019 Anton Glezman. All rights reserved.
//

import UIKit

final class AuthViewController: UIViewController {
 
    // MARK: - Outlets
    
    @IBOutlet private weak var phoneView: UIView!
    @IBOutlet private weak var phoneTextField: UITextField!
    @IBOutlet private weak var codeView: UIView!
    @IBOutlet private weak var codeTextField: UITextField!
    @IBOutlet private weak var passwordView: UIView!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var activityIndicator: UIActivityIndicatorView!
    
    
    // MARK: - Private properties
    
    private var authService = ServiceLayer.instance.authService
    
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        authService.delegate = self
        ServiceLayer.instance.telegramService.run()
        
        phoneView.isHidden = true
        codeView.isHidden = true
        passwordView.isHidden = true
        activityIndicator.startAnimating()
    }
    
    
    // MARK: - Actions
    
    @IBAction private func sendPhone() {
        guard let phone = phoneTextField.text else { return }
        authService.sendPhone(phone)
    }
    
    @IBAction private func sendCode() {
        guard let code = codeTextField.text else { return }
        authService.sendCode(code)
    }
    
    @IBAction private func sendPassword() {
        guard let passwd = passwordTextField.text else { return }
        authService.sendPassword(passwd)
    }
}


extension AuthViewController: AuthServiceDelegate {
    
    func waitPhoneNumer() {
        phoneView.isHidden = false
        codeView.isHidden = true
        passwordView.isHidden = true
        activityIndicator.stopAnimating()
    }
    
    func waitCode() {
        phoneView.isHidden = true
        codeView.isHidden = false
        passwordView.isHidden = true
        activityIndicator.stopAnimating()
    }
    
    func waitPassword() {
        phoneView.isHidden = true
        codeView.isHidden = true
        passwordView.isHidden = false
        activityIndicator.stopAnimating()
    }
    
    func onReady() {
        ApplicationController.showMain()
    }
    
}
