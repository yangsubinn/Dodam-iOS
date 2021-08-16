//
//  SplashVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/16.
//

import UIKit
import SnapKit

class SplashVC: UIViewController {
    
    let logoImage = UIImageView()
    let logoTypoImage = UIImageView()
    let loginButton = BlueButton(title: "Log in")
    let signUpButton = LightButton(title: "Sign up")

    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
        setupLayout()
    }
    
    func configUI() {
        logoImage.image = UIImage(named: "logo")
        logoTypoImage.image = UIImage(named: "logo_typo")
    }
    
    func setupLayout() {
        view.addSubview(logoImage)
        view.addSubview(loginButton)
        view.addSubview(logoTypoImage)
        view.addSubview(signUpButton)
        
        logoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview().inset(20)
            make.centerY.equalToSuperview()
            make.width.equalTo(104)
            make.height.equalTo(128)
        }
        
        logoTypoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(logoImage.snp.bottom).offset(28)
            make.width.equalTo(110)
            make.height.equalTo(36)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(logoImage.snp.bottom).offset(50)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(loginButton.snp.bottom).offset(14)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
