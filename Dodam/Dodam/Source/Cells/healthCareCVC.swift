//
//  healthCareCVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/21.
//

import UIKit

class healthCareCVC: UICollectionViewCell {
    static let identifier = "healthCareCVC"
    
    // MARK: - Properties
    var titleLabel = UILabel()
    var numberLabel = UILabel()
    var unitLabel = UILabel()
    
    // MARK: - Life Cycles
    override func awakeFromNib() {
        super.awakeFromNib()
        
        configUI()
        setupLayout()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
    }
    
//    override init(style: UICollectionViewCell.CellStyle, reuseIdentifier: String?) {
//            super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        configUI()
//        setupLayout()
//    }
        
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }

//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
    // MARK: - Custom Method
    private func configUI() {
        self.backgroundColor = .yellow
        
        titleLabel.text = "제목"
        numberLabel.text = "숫자"
        unitLabel.text = "단위"
        
        titleLabel.font = .systemFont(ofSize: 16, weight: .medium)
        numberLabel.font = .enBoldSystemFont(ofSize: 22)
        unitLabel.font = .systemFont(ofSize: 14, weight: .medium)
        
        titleLabel.textColor = .mainBlue
        numberLabel.textColor = .pointOrange100
        unitLabel.textColor = .mainBlue
    }
    
    private func setupLayout() {
        addSubviews([titleLabel, numberLabel, unitLabel])
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalToSuperview().offset(20)
        }
        
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(10)
            make.leading.equalToSuperview().offset(20)
        }
        
        unitLabel.snp.makeConstraints { make in
            make.bottom.equalTo(numberLabel.snp.bottom)
            make.leading.equalTo(numberLabel.snp.trailing).offset(2)
        }
    }
}
