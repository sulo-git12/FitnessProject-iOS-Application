//
//  RegisterController.swift
//  Epicurious Chef
//
//  Created by Sulo Mac on 1/18/23.
//

import UIKit

class RegisterController: UIViewController {

    //MARK: - UI Components

    private let headerView = AuthHeaderView(
        title: "Sign Up", subTitle: "Create your new account")
    
    private let usernameField = CustomTextField(fieldType: .username)
    private let emailField = CustomTextField(fieldType: .email)
    private let passwordField = CustomTextField(fieldType: .password)
    
    private let signUpButton = CustomButton(title: "Sign Up", hasBackground: true,  fontsize: .big)
    private let signInButton  = CustomButton(title: "Already do you have account?  Sign In.", fontsize: .medium)

    private let  termsTextView: UITextView = {
        
//        tv.text = "After creating an account, you agree to our terms and conditions"
        
        let attributedString  = NSMutableAttributedString(string: "After creating an account, you agree to our terms and conditions also privacy polocies")
        
        attributedString.addAttribute(.link, value: "terms://termsAndConditions", range: (attributedString.string as NSString).range(of: "Terms and Conditions"))
        
        attributedString.addAttribute(.link, value: "privacy://privacyPolicy", range: (attributedString.string as NSString).range(of: "Privacy policies"))
        
        let tv = UITextView()
        tv.linkTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.systemBlue]
                
        tv.backgroundColor = .clear
        tv.attributedText = attributedString
        tv.textColor = .label
        tv.isSelectable = true
        tv.isEditable = false
        tv.delaysContentTouches = false
        tv.isScrollEnabled = false
        return tv
    }()
    
    //MARK: - LifeCycle
     

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        self.termsTextView.delegate = self
        
        self.signUpButton.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
        self.signInButton.addTarget(self, action: #selector(didTapSignIn), for: .touchUpInside)
        
    }
    
  
//    0verride override func viewWillDisappear(_ animated: Bool) {
//        <#code#>
//    }
//
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
        
       
    }
    
    
    // MARK: UI Setup 
    
    private func setupUI(){
        
        self.view.backgroundColor  = .systemBackground
        
        self.view.addSubview(headerView)
        self.view.addSubview(usernameField)
        self.view.addSubview(emailField)
        self.view.addSubview(passwordField)
        self.view.addSubview(signUpButton)
        self.view.addSubview(termsTextView)
        self.view.addSubview(signInButton)
        
        

        self.headerView.translatesAutoresizingMaskIntoConstraints = false
        self.usernameField.translatesAutoresizingMaskIntoConstraints = false
        self.emailField.translatesAutoresizingMaskIntoConstraints = false
        self.passwordField.translatesAutoresizingMaskIntoConstraints = false
        self.signUpButton.translatesAutoresizingMaskIntoConstraints = false
        self.termsTextView.translatesAutoresizingMaskIntoConstraints = false
        self.signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

            self.headerView.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.headerView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.headerView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.headerView.heightAnchor.constraint(equalToConstant: 222),
            
            
            self.usernameField.topAnchor.constraint(equalTo: headerView.bottomAnchor,constant: 12),
            self.usernameField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.usernameField.heightAnchor.constraint(equalToConstant:  55),
            self.usernameField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.emailField.topAnchor.constraint(equalTo: usernameField.bottomAnchor,constant: 22),
            self.emailField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.emailField.heightAnchor.constraint(equalToConstant:  55),
            self.emailField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            
            self.passwordField.topAnchor.constraint(equalTo: emailField.bottomAnchor,constant: 22),
            self.passwordField.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.passwordField.heightAnchor.constraint(equalToConstant:  55),
            self.passwordField.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            
            self.signUpButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor,constant: 22),
            self.signUpButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.signUpButton.heightAnchor.constraint(equalToConstant: 55),
            self.signUpButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            
            self.termsTextView.topAnchor.constraint(equalTo: passwordField.bottomAnchor,constant: 6),
            self.termsTextView.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.termsTextView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.signInButton.topAnchor.constraint(equalTo: termsTextView.bottomAnchor,constant: 11),
            self.signInButton.centerXAnchor.constraint(equalTo: headerView.centerXAnchor),
            self.signInButton.heightAnchor.constraint(equalToConstant:  44),
            self.signInButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
        ])
        
        
 
    }
    
    //MARK: - Selectors
    
    @objc func didTapSignUp() {
        print("DEBUG PRINT:", "didTapSignUp")
//        let webViewer  = WebViewerController(with: "https://media.istockphoto.com/id/1135341047/vector/login-page-on-laptop-screen-notebook-and-online-login-form-sign-in-page-user-profile-access.jpg?s=612x612&w=0&k=20&c=EsJEsevxVZujj_IU_nLz4tZcvmcXTy7sQt03bpfz3ZQ=")
//
//        let nav = UINavigationController(rootViewController: webViewer)
//        self.present(nav, animated: true, completion: nil)
        
    }

    
    
    @objc private func didTapSignIn()
    {
        self.navigationController?.popToRootViewController(animated: true)
    }
   
    
}

extension RegisterController:  UITextViewDelegate {
    func textView(_ textView: UITextView, shouldInteractWith URL: URL, in characterRange: NSRange, interaction: UITextItemInteraction) -> Bool{
        
        if URL.scheme == "terms" {
            self.showWebViewerController(with: "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjWlfHduOL8AhVRTWwGHR8dB0IQFnoECAwQAQ&url=https%3A%2F%2Fpolicies.google.com%2Fprivacy%3Fhl%3Den-US&usg=AOvVaw3RTtfJtR2-cXACFp7Z7hmn")
            
        } else if URL.scheme == "privacy"{
            self.showWebViewerController(with: "https://www.google.com/url?sa=t&rct=j&q=&esrc=s&source=web&cd=&ved=2ahUKEwjWlfHduOL8AhVRTWwGHR8dB0IQFnoECAwQAQ&url=https%3A%2F%2Fpolicies.google.com%2Fprivacy%3Fhl%3Den-US&usg=AOvVaw3RTtfJtR2-cXACFp7Z7hmn")

        }
            
        
        
        return true
    }
    
    private func showWebViewerController(with urlString: String){
        let vc = WebViewerController(with: urlString)
        let nav = UINavigationController(rootViewController: vc)
        self.present(nav, animated: true, completion: nil)
    }
    
    func textViewDidChange(_ textView: UITextView) {
        textView.delegate = nil
        textView.selectedTextRange = nil
        textView.delegate = self
        
    }
    
}
