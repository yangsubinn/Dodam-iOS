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

    override func viewDidLoad() {
        super.viewDidLoad()

        configUI()
        setupLayout()
    }
    
    func configUI() {
        logoImage.image = UIImage(named: "logo")
        logoImage.backgroundColor = .blue
    }
    
    func setupLayout() {
        view.addSubview(logoImage)
        
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
