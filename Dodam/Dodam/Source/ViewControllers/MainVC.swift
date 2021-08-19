//
//  MainVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/18.
//

import UIKit

class MainVC: UIViewController {
    
    let titleLabel = UILabel()
    
    let logoImage = UIImageView()
    let menuButton = UIButton()
    let powBackImage = UIImageView()
    let petImage = UIImageView()
    let petNameLabel = UILabel()
    let petKindLabel = UILabel()
    let petAgeLabel = UILabel()
    let petBirthYearLabel = UILabel()
    let editPetButton = UIButton()
    
    let firstLine = UIView()
    let healthCareTitle = UILabel()
    let healthCareSubTitle = UILabel()
    let healthCareDetailButton = UIButton()
    // collectionView
    let healthCareCollectionView = UIView()
    
    let secondLine = UIView()
    let deviceConnectTitle = UILabel()
    let deviceConnectSubTitle = UILabel()
    let deviceConnectDetailButton = UIButton()
    // colectionView
    let deviceConncectCollectionView = UIView()
    
    let thirdLind = UIView()
    let shopTitle = UILabel()
    let shopSubTitle = UILabel()
    let shopDetailButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
        setupLayout()
    }
    
    func configUI() {
//        view.backgroundColor = .mainBlue

//        titleLabel.text = "메인뷰다 환영~"
//        titleLabel.textColor = .white
        
        logoImage.image = UIImage(named: "logo_typo")
        logoImage.backgroundColor = .yellow
        
        menuButton.backgroundColor = .gray
        petImage.backgroundColor = .purple
        editPetButton.backgroundColor = .blue
        powBackImage.backgroundColor = .lightGray
        firstLine.backgroundColor = .red
        secondLine.backgroundColor = .yellow
        thirdLind.backgroundColor = .blue
        
        petNameLabel.text = "양감자"
        petKindLabel.text = "강아지"
        petAgeLabel.text = "7살"
        petBirthYearLabel.text = "(2014년생)"
        
        petNameLabel.font = .systemFont(ofSize: 20, weight: .semibold)
        petKindLabel.font = .systemFont(ofSize: 12, weight: .medium)
        petAgeLabel.font = .systemFont(ofSize: 12, weight: .medium)
        petBirthYearLabel.font = .systemFont(ofSize: 12, weight: .medium)
        
        healthCareTitle.text = "HealthCare"
        healthCareSubTitle.text = "건강 관리"
        
        deviceConnectTitle.text = "Device Connect"
        deviceConnectSubTitle.text = "반려동물의 일상 건강 데이터 받기"
        
        shopTitle.text = "Shop"
        shopSubTitle.text = "반려동물 양감자를 위한 맞춤형 제품을 구매해보세요!"
        
        healthCareDetailButton.backgroundColor = .systemPink
        deviceConnectDetailButton.backgroundColor = .systemPink
        shopDetailButton.backgroundColor = .systemPink
        
        healthCareCollectionView.backgroundColor = .cyan
        deviceConncectCollectionView.backgroundColor = .cyan
    }
    
    func setupLayout() {
//        view.addSubview(titleLabel)
        view.addSubviews([logoImage, menuButton, petImage,
                          petNameLabel, petKindLabel, petAgeLabel,
                          firstLine, powBackImage, healthCareTitle,
                          healthCareSubTitle, healthCareDetailButton, healthCareCollectionView,
                          secondLine, deviceConnectTitle, deviceConnectSubTitle,
                          deviceConnectDetailButton, deviceConnectDetailButton, thirdLind,
                          shopTitle, shopSubTitle, shopDetailButton])
        
//        titleLabel.snp.makeConstraints { make in
//            make.center.equalToSuperview()
//        }
        
        logoImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(75)
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(132)
            make.height.equalTo(43)
        }
        
        menuButton.snp.makeConstraints { make in
            make.centerY.equalTo(logoImage.snp.centerY)
            make.trailing.equalToSuperview().inset(1)
            make.width.height.equalTo(34)
        }
        
        petImage.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(30)
            make.leading.equalToSuperview().offset(16)
            make.width.height.equalTo(166)
        }
        
        petNameLabel.snp.makeConstraints { make in
            make.top.equalTo(logoImage.snp.bottom).offset(34)
            make.leading.equalTo(petImage.snp.trailing).offset(14)
        }
        
        petKindLabel.snp.makeConstraints { make in
            make.top.equalTo(petNameLabel.snp.bottom).offset(11)
            make.leading.equalTo(petImage.snp.trailing).offset(14)
        }
        
        petAgeLabel.snp.makeConstraints { make in
            make.top.equalTo(petKindLabel.snp.bottom).offset(8)
            make.leading.equalTo(petImage.snp.trailing).offset(14)
        }
        
        firstLine.snp.makeConstraints { make in
            make.top.equalTo(petImage.snp.bottom).offset(19)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(0.5)
        }
        
        powBackImage.snp.makeConstraints { make in
            make.bottom.equalTo(firstLine.snp.top)
            make.trailing.equalToSuperview().inset(15)
            make.width.height.equalTo(110)
        }
        
        healthCareTitle.snp.makeConstraints { make in
            make.top.equalTo(firstLine.snp.bottom).offset(12)
            make.leading.equalToSuperview().offset(16)
        }
        
        healthCareSubTitle.snp.makeConstraints { make in
            make.top.equalTo(healthCareTitle.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(16)
        }
        
        healthCareDetailButton.snp.makeConstraints { make in
            make.bottom.equalTo(healthCareSubTitle.snp.bottom)
            make.trailing.equalToSuperview().inset(1)
            make.width.height.equalTo(34)
        }
        
        // collectionView
        healthCareCollectionView.snp.makeConstraints { make in
            make.top.equalTo(healthCareSubTitle.snp.bottom).offset(15)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(81)
        }
        
        secondLine.snp.makeConstraints { make in
            make.top.equalTo(healthCareCollectionView.snp.bottom).offset(21)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(0.5)
        }
        
        deviceConnectTitle.snp.makeConstraints { make in
            make.top.equalTo(secondLine.snp.bottom).offset(12)
            make.leading.equalToSuperview().offset(16)
        }
        
        deviceConnectSubTitle.snp.makeConstraints { make in
            make.top.equalTo(deviceConnectTitle.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(16)
        }
        
        deviceConnectDetailButton.snp.makeConstraints { make in
            make.bottom.equalTo(deviceConnectSubTitle.snp.bottom)
            make.trailing.equalToSuperview().inset(1)
            make.width.height.equalTo(34)
        }
        
        // 문제 collectionView
//        deviceConncectCollectionView.snp.makeConstraints { make in
////            make.top.equalTo(secondLine.snp.bottom).offset(69)
//            make.top.equalTo(deviceConnectSubTitle.snp.bottom).offset(15)
////            make.leading.equalTo(deviceConnectSubTitle.snp.leading)
////            make.leading.equalTo(healthCareCollectionView.snp.leading)
//            make.leading.trailing.equalToSuperview().inset(16)
////            make.edges.equalToSuperview().inset(16)
////            make.trailing.equalToSuperview().inset(16)
//            make.height.equalTo(81)
////            make.width.equalTo(300)
//        }
        // 문제 끝
        
        thirdLind.snp.makeConstraints { make in
//            make.top.equalTo(deviceConcectCollectionView.snp.bottom).offset(21)
            make.top.equalTo(deviceConnectSubTitle).offset(89)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(0.5)
        }
        
        shopTitle.snp.makeConstraints { make in
            make.top.equalTo(thirdLind.snp.bottom).offset(12)
            make.leading.equalToSuperview().offset(16)
        }
        
        shopSubTitle.snp.makeConstraints { make in
            make.top.equalTo(shopTitle.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(16)
        }
        
        shopDetailButton.snp.makeConstraints { make in
            make.bottom.equalTo(shopSubTitle.snp.bottom)
            make.trailing.equalToSuperview().inset(1)
            make.width.height.equalTo(34)
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
