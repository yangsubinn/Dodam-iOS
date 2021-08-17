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
        
        setupLayout()
        setupLayout()
        configUI()
        start()
    }
    
    private func start() {
        UIView.animate(withDuration: 1.0,
                       delay: 0.5,
                       animations: {
                        let frame = CGAffineTransform(translationX: 0, y: -130)
                        self.logoImage.transform = frame
                       }, completion: {finished in /// 앞 애니메이션 끝난 다음 실행되는 부분
                        UIView.animate(withDuration: 0.6) {
                            self.logoTypoImage.alpha = 1.0
                            self.loginButton.alpha = 1.0
                            self.signUpButton.alpha = 1.0
                        }
        })
    }
    
    func configUI() {
        logoImage.image = UIImage(named: "logo")
        logoTypoImage.image = UIImage(named: "logo_typo")
        
        logoTypoImage.alpha = 0.0
        loginButton.alpha = 0.0
        signUpButton.alpha = 0.0
    }
    
    func setupLayout() {
        view.addSubviews([logoImage, logoTypoImage, loginButton, signUpButton])
        
        logoImage.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(142)
        }
        
        logoTypoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.snp.top).offset(380)
            make.width.equalTo(110)
            make.height.equalTo(36)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(logoTypoImage.snp.top).offset(80)
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
