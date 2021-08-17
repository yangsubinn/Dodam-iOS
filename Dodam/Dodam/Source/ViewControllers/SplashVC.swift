//
//  SplashVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/16.
//

import UIKit
import SnapKit

class SplashVC: UIViewController, UITextFieldDelegate {
    
    let logoImage = UIImageView()
    let logoTypoImage = UIImageView()
    let firstLoginButton = BlueButton(title: "Log in")
    let signUpButton = LightButton(title: "Sign up")
    
    let backButton = BackButton()
    let loginTitle = UILabel()
    let idLabel = UILabel()
    let idTextField = UITextField()
    let pwLabel = UILabel()
    let pwTextField = UITextField()
    let helpLabel = UILabel()
    
    let secondLoginButton = UIButton()
    let bottomSignUpButton = UIButton()
    let divideLine = UIView()
    let otherLoginLabel = UILabel()
    let facebookButton = LightButton(title: "Facebook")
    let naverButton = LightButton(title: "Naver")
    let kakaoButton = LightButton(title: "Kakao")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        idTextField.delegate = self
        pwTextField.delegate = self
        
        setupLayout()
        configUI()
        start()
        setupAddTarget()
//        setupLoginLayout()
    }
    
    override func viewDidLayoutSubviews() {
        let idborder = CALayer()
        let pwborder = CALayer()
        
        idborder.borderColor = CGColor.init(gray: 80/225.0, alpha: 0.1)
        idborder.frame = CGRect(x: 0, y: idTextField.frame.size.height-2, width: idTextField.frame.width, height: 1)
        idborder.borderWidth = 1.0
        idTextField.layer.addSublayer(idborder)
        idTextField.layer.masksToBounds = true
        
        pwborder.borderColor = CGColor.init(gray: 80/225.0, alpha: 0.1)
        pwborder.frame = CGRect(x: 0, y: pwTextField.frame.size.height-2, width: pwTextField.frame.width, height: 1)
        pwborder.borderWidth = 1.0
        pwTextField.layer.addSublayer(pwborder)
        pwTextField.layer.masksToBounds = true
    }
    
    private func start() {
        UIView.animate(withDuration: 1.0,
                       delay: 0.5,
                       animations: {
                        let frame = CGAffineTransform(translationX: 0, y: -110)
                        self.logoImage.transform = frame
                       }, completion: {finished in
                        UIView.animate(withDuration: 0.6) {
                            self.logoTypoImage.alpha = 1.0
                            self.firstLoginButton.alpha = 1.0
                            self.signUpButton.alpha = 1.0
                        }
        })
        
        
    }
    
    func configUI() {
        logoImage.image = UIImage(named: "logo")
        logoTypoImage.image = UIImage(named: "logo_typo")
        
        logoTypoImage.alpha = 0.0
        firstLoginButton.alpha = 0.0
        signUpButton.alpha = 0.0
        
        loginTitle.text = "LOGIN"
        loginTitle.font = .enBoldSystemFont(ofSize: 26)
        loginTitle.textColor = .mainBlue
        
        idLabel.text = "아이디"
//        idLabel.font = .AppleSDGothicNeo(type: .Medium, size: 15)
        idLabel.font = .systemFont(ofSize: 15, weight: .medium)
        
        pwLabel.text = "비밀번호"
//        pwLabel.font = .AppleSDGothicNeo(type: .Medium, size: 15)
        pwLabel.font = .systemFont(ofSize: 15, weight: .medium)
        
        idTextField.placeholder = "email@email.com"
        pwTextField.placeholder = "password"
        
        idTextField.borderStyle = .none
        pwTextField.borderStyle = .none

        helpLabel.text = "비밀번호를 잊어버리셨나요?"
//        helpLabel.font = .AppleSDGothicNeo(type: .Medium, size: 10)
        helpLabel.font = .systemFont(ofSize: 12)
        helpLabel.textColor = .lightGray
        
        // 터치영역 잡는거로만 쓸거라 clear
        secondLoginButton.backgroundColor = .clear
        
        bottomSignUpButton.setTitle("Sign up", for: .normal)
        bottomSignUpButton.setTitleColor(.mainBlue, for: .normal)
        bottomSignUpButton.titleLabel?.font = .enRegularSystemFont(ofSize: 18)
        
        divideLine.backgroundColor = .lightGray
        divideLine.alpha = 0.2
        
        otherLoginLabel.text = "그 외의 로그인"
//        otherLoginLabel.font = .AppleSDGothicNeo(type: .Medium, size: 10)
        otherLoginLabel.font = .systemFont(ofSize: 12)
    }
    
    func setupLayout() {
        view.addSubviews([logoImage, logoTypoImage, firstLoginButton, signUpButton])
        
        logoImage.snp.makeConstraints { make in
            make.centerX.centerY.equalToSuperview()
            make.width.height.equalTo(142)
        }
        
        logoTypoImage.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(view.snp.top).offset(400)
            make.width.equalTo(110)
            make.height.equalTo(36)
        }
        
        firstLoginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(logoTypoImage.snp.top).offset(80)
        }
        
        signUpButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
            make.top.equalTo(firstLoginButton.snp.bottom).offset(14)
        }
    }
    
    func setupLoginLayout() {
        view.addSubviews([backButton, loginTitle, idLabel,firstLoginButton, secondLoginButton,
                          idTextField, pwLabel, pwTextField, helpLabel,
                          bottomSignUpButton, divideLine, otherLoginLabel,
                          facebookButton, naverButton, kakaoButton])
        
        backButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(87)
            make.leading.equalToSuperview().inset(12)
        }
        
        loginTitle.snp.makeConstraints { make in
            make.top.equalTo(backButton.snp.bottom).offset(9)
            make.leading.equalToSuperview().offset(16)
        }
        
        idLabel.snp.makeConstraints { make in
            make.top.equalTo(loginTitle.snp.bottom).offset(47)
            make.leading.equalToSuperview().offset(16)
        }
        
        idTextField.snp.makeConstraints { make in
            make.top.equalTo(idLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(32)
        }
        
        pwLabel.snp.makeConstraints { make in
            make.top.equalTo(idTextField.snp.bottom).offset(32)
            make.leading.equalToSuperview().offset(16)
        }
        
        pwTextField.snp.makeConstraints { make in
            make.top.equalTo(pwLabel.snp.bottom).offset(8)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(32)
        }
        
        helpLabel.snp.makeConstraints { make in
            make.top.equalTo(pwTextField.snp.bottom).offset(10)
            make.trailing.equalToSuperview().inset(16)
        }
        
        firstLoginButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        // 기존에 있던 로그인버튼 위에 터치영역으로 쓸 로그인버튼을 하나 더 얹어서 addTarget 쓸라구
        // 같은 버튼에서 두가지의 액션이 나와야 하는데, 어떻게 해야할지 모르겠어서 일단 위에 투명한 버튼을 하나 더 얹었습니다..
        secondLoginButton.snp.remakeConstraints { make in
            make.bottom.equalTo(bottomSignUpButton.snp.top)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(60)
        }
        
        bottomSignUpButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(500) /// 나중에 애니메이션 넣고 수정
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(54)
        }
        
        divideLine.snp.makeConstraints { make in
            make.top.equalTo(bottomSignUpButton.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(0.5)
        }
        
        otherLoginLabel.snp.makeConstraints { make in
            make.top.equalTo(divideLine.snp.bottom).offset(14)
            make.centerX.equalToSuperview()
        }
        
        facebookButton.snp.makeConstraints { make in
            make.top.equalTo(otherLoginLabel.snp.bottom).offset(24)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        naverButton.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.bottom).offset(11)
            make.leading.trailing.equalToSuperview().inset(16)
        }
        
        kakaoButton.snp.makeConstraints { make in
            make.top.equalTo(naverButton.snp.bottom).offset(11)
            make.leading.trailing.equalToSuperview().inset(16)
        }
    }
    
    // return키 눌렀을 때 키보드 내려가도록
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
    
    // 화면 눌렀을 때 키보드 내려가도록
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    private func setupAddTarget() {
        firstLoginButton.addTarget(self, action: #selector(touchUpLoginButton), for: .touchUpInside)
        secondLoginButton.addTarget(self, action: #selector(touchUpSecondLoginButton(_:)), for: .touchUpInside)
    }
    
    @objc func touchUpLoginButton(_ sender: UIButton) {
        UIView.animate(withDuration: 1) {
            let loginButtonFrame = CGAffineTransform(translationX: 0, y: -40)
            self.firstLoginButton.transform = loginButtonFrame
            self.logoImage.alpha = 0
            self.logoTypoImage.alpha = 0
            self.signUpButton.alpha = 0
        } completion: { finshed in
            self.setupLoginLayout()
        }
    }
    
    @objc func touchUpSecondLoginButton(_ sender: UIButton) {
        print("LoginButton Clicked")
        
        // MainVC로 전환할 때 1.0초 딜레이
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: false) { (t) in
            t.invalidate()
            guard let vc = self.storyboard?.instantiateViewController(identifier: "MainVC") as? MainVC else { return }
            vc.modalPresentationStyle = .fullScreen
            vc.modalTransitionStyle = .crossDissolve
            self.present(vc, animated: true, completion: nil)
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
