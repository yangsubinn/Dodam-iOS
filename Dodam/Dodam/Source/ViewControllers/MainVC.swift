//
//  MainVC.swift
//  Dodam
//
//  Created by 양수빈 on 2021/08/18.
//

import UIKit

class MainVC: UIViewController {
    
    let titleLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
        setupLayout()
    }
    
    func configUI() {
        view.backgroundColor = .mainBlue
        
        titleLabel.text = "메인뷰다 환영~"
        titleLabel.textColor = .white
    }
    
    func setupLayout() {
        view.addSubview(titleLabel)
        
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
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
