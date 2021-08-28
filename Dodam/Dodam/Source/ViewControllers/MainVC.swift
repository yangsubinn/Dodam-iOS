//
//  MainVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/18.
//

import UIKit

class MainVC: UIViewController {
    // MARK: - Properties
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
    let secondLine = UIView()
    let deviceConnectTitle = UILabel()
    let deviceConnectSubTitle = UILabel()
    let deviceConnectDetailButton = UIButton()
    let thirdLind = UIView()
    let shopTitle = UILabel()
    let shopSubTitle = UILabel()
    let shopDetailButton = UIButton()
    
    let healthCareTitles = ["체중", "심박수", "호흡수", "체온", "수면관리"]
    let healthCareNumbers = ["6.7", "90", "18", "38.5", "8"]
    let healthCareUnits = ["kg", "bpm", "회/분", "도", "시간 취침"]
    
    let devices = ["feed", "home", "bed", "cattower"]
//    let devices = ["feed", "home", "bed"]
    
    private lazy var healthCareCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layout.itemSize = CGSize(width: 100, height: 100)
        layout.minimumLineSpacing = 16
        
        let collectinoView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectinoView.register(healthCareCVC.self, forCellWithReuseIdentifier: healthCareCVC.identifier)
        collectinoView.showsHorizontalScrollIndicator = false
        collectinoView.backgroundColor = .clear
        
        collectinoView.delegate = self
        collectinoView.dataSource = self
        
        return collectinoView
    }()
    
    private lazy var deviceConnectCollectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)
        layout.itemSize = CGSize(width: 68, height: 68)
        layout.minimumLineSpacing = 16
        
        let collectinoView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectinoView.register(deviceCVC.self, forCellWithReuseIdentifier: deviceCVC.identifier)
        collectinoView.showsHorizontalScrollIndicator = false
        collectinoView.backgroundColor = .clear
        
        collectinoView.delegate = self
        collectinoView.dataSource = self
        
        return collectinoView
    }()

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
        setupLayout()
//        setupCollectionView()
    }
    
    // MARK: - Custom Method
    func configUI() {
        logoImage.image = UIImage(named: "logo_typo")
        powBackImage.image = UIImage(named: "powBack")
        menuButton.setImage(UIImage(named: "menuButton"), for: .normal)
        editPetButton.setImage(UIImage(named: "editButton"), for: .normal)
        petImage.image = UIImage(named: "petImage")
        healthCareDetailButton.setImage(UIImage(named: "detailButton"), for: .normal)
        deviceConnectDetailButton.setImage(UIImage(named: "detailButton"), for: .normal)
        shopDetailButton.setImage(UIImage(named: "detailButton"), for: .normal)
        
        firstLine.backgroundColor = .lightGray
        secondLine.backgroundColor = .lightGray
        thirdLind.backgroundColor = .lightGray
        
        firstLine.alpha = 0.5
        secondLine.alpha = 0.5
        thirdLind.alpha = 0.5
        
        petNameLabel.text = "양감자"
        petKindLabel.text = "강아지"
        petAgeLabel.text = "7살"
        petBirthYearLabel.text = "(2014년생)"
        
        petNameLabel.font = .systemFont(ofSize: 22, weight: .semibold)
        petKindLabel.font = .systemFont(ofSize: 14, weight: .regular)
        petAgeLabel.font = .systemFont(ofSize: 14, weight: .regular)
        petBirthYearLabel.font = .systemFont(ofSize: 14, weight: .regular)
        
        healthCareTitle.text = "HealthCare"
        healthCareSubTitle.text = "건강 관리"
        
        deviceConnectTitle.text = "Device Connect"
        deviceConnectSubTitle.text = "반려동물의 일상 건강 데이터 받기"
        
        shopTitle.text = "Shop"
        shopSubTitle.text = "반려동물 양감자를 위한 맞춤형 제품을 구매해보세요!"
        
        healthCareTitle.font = .enBoldSystemFont(ofSize: 20)
        deviceConnectTitle.font = .enBoldSystemFont(ofSize: 20)
        shopTitle.font = .enBoldSystemFont(ofSize: 20)
        
        healthCareSubTitle.font = .enRegularSystemFont(ofSize: 14)
        deviceConnectSubTitle.font = .enRegularSystemFont(ofSize: 14)
        shopSubTitle.font = .enRegularSystemFont(ofSize: 14)
    }
    
    func setupLayout() {
        view.addSubviews([logoImage, menuButton, petImage,
                          petNameLabel, petKindLabel, petAgeLabel, petBirthYearLabel,
                          firstLine, powBackImage, healthCareTitle,
                          healthCareSubTitle, healthCareDetailButton, healthCareCollectionView,
                          secondLine, deviceConnectTitle, deviceConnectSubTitle,
                          deviceConnectDetailButton, deviceConnectCollectionView, thirdLind,
                          shopTitle, shopSubTitle, shopDetailButton])
//        view.addSubview(healthCareCollectionView ?? UICollectionView())
        
        logoImage.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(75)
            make.leading.equalToSuperview().offset(16)
            make.width.equalTo(132)
            make.height.equalTo(43)
        }
        
        menuButton.snp.makeConstraints { make in
            make.centerY.equalTo(logoImage.snp.centerY)
            make.trailing.equalToSuperview().inset(3)
            make.width.height.equalTo(34) // 34 더 키워야될 것 같음
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
            make.top.equalTo(petNameLabel.snp.bottom).offset(8)
            make.leading.equalTo(petImage.snp.trailing).offset(14)
        }
        
        petAgeLabel.snp.makeConstraints { make in
            make.top.equalTo(petKindLabel.snp.bottom).offset(6)
            make.leading.equalTo(petImage.snp.trailing).offset(14)
        }
        
        petBirthYearLabel.snp.makeConstraints { make in
            make.centerY.equalTo(petAgeLabel.snp.centerY)
            make.leading.equalTo(petAgeLabel.snp.trailing)
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
            make.top.equalTo(firstLine.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(16)
        }
        
        healthCareSubTitle.snp.makeConstraints { make in
            make.top.equalTo(healthCareTitle.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(16)
        }
        
        healthCareDetailButton.snp.makeConstraints { make in
            make.bottom.equalTo(healthCareSubTitle.snp.bottom)
            make.trailing.equalToSuperview().inset(3)
            make.width.height.equalTo(34)
        }
        
        // collectionView
        healthCareCollectionView.snp.makeConstraints { make in
            make.top.equalTo(healthCareSubTitle.snp.bottom).offset(17)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        
        secondLine.snp.makeConstraints { make in
            make.top.equalTo(healthCareCollectionView.snp.bottom).offset(18)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(0.5)
        }
        
        deviceConnectTitle.snp.makeConstraints { make in
            make.top.equalTo(secondLine.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(16)
        }
        
        deviceConnectSubTitle.snp.makeConstraints { make in
            make.top.equalTo(deviceConnectTitle.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(16)
        }
        
        deviceConnectDetailButton.snp.makeConstraints { make in
            make.bottom.equalTo(deviceConnectSubTitle.snp.bottom)
            make.trailing.equalToSuperview().inset(3)
            make.width.height.equalTo(34)
        }
        
        // collectionView
        deviceConnectCollectionView.snp.makeConstraints { make in
            make.top.equalTo(deviceConnectSubTitle.snp.bottom).offset(17)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(100)
        }
        
        thirdLind.snp.makeConstraints { make in
            make.top.equalTo(deviceConnectCollectionView.snp.bottom).offset(18)
            make.leading.trailing.equalToSuperview().inset(16)
            make.height.equalTo(0.5)
        }

        shopTitle.snp.makeConstraints { make in
            make.top.equalTo(thirdLind.snp.bottom).offset(12)
            make.leading.equalToSuperview().offset(16)
        }

        shopSubTitle.snp.makeConstraints { make in
            make.top.equalTo(shopTitle.snp.bottom).offset(5)
            make.leading.equalToSuperview().offset(16)
        }

        shopDetailButton.snp.makeConstraints { make in
            make.bottom.equalTo(shopSubTitle.snp.bottom)
            make.trailing.equalToSuperview().inset(3)
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

// MARK: - Extension
extension MainVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case healthCareCollectionView:
            return healthCareTitles.count
        case deviceConnectCollectionView:
//            switch devices.count {
//            case 0...devices.count:
//                devices.count
//            default:
//                
//            }
            print("devices.count: \(devices.count)") // 4
            return devices.count + 1 // 5
        default:
            return 5
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case healthCareCollectionView:
            guard let healthCareCell = healthCareCollectionView.dequeueReusableCell(withReuseIdentifier: healthCareCVC.identifier, for: indexPath) as? healthCareCVC else { return UICollectionViewCell() }
            healthCareCell.backgroundColor = .subGray
            healthCareCell.layer.cornerRadius = 20
            healthCareCell.titleLabel.text = healthCareTitles[indexPath.item]
            healthCareCell.numberLabel.text = healthCareNumbers[indexPath.item]
            healthCareCell.unitLabel.text = healthCareUnits[indexPath.item]
            
            return healthCareCell
            
        case deviceConnectCollectionView:
            let count = indexPath.row
            print("count:\(count)")
            
            switch count {
            case 0...devices.count - 1:
                guard let deviceCell = deviceConnectCollectionView.dequeueReusableCell(withReuseIdentifier: deviceCVC.identifier, for: indexPath) as? deviceCVC else { return UICollectionViewCell() }
                deviceCell.backgroundColor = .clear
                deviceCell.deviceImage.image = UIImage(named: "\(devices[indexPath.item])")
                return deviceCell
            case devices.count:
                guard let deviceCell = deviceConnectCollectionView.dequeueReusableCell(withReuseIdentifier: deviceCVC.identifier, for: indexPath) as? deviceCVC else { return UICollectionViewCell() }
                deviceCell.backgroundColor = .clear
                deviceCell.deviceImage.image = UIImage(named: "addButton")
                return deviceCell
            default:
                guard let deviceCell = deviceConnectCollectionView.dequeueReusableCell(withReuseIdentifier: deviceCVC.identifier, for: indexPath) as? deviceCVC else { return UICollectionViewCell() }
                deviceCell.backgroundColor = .clear
                deviceCell.deviceImage.image = UIImage(named: "addButton")
                return deviceCell
            }
            
        default:
            return UICollectionViewCell.init()
        }
    }
}

extension MainVC: UICollectionViewDelegate {
    
}
