//
//  MainLuxeHouseCollectCell.swift
//  MyAirbnb
//
//  Created by 행복한 개발자 on 11/07/2019.
//  Copyright © 2019 Alex Lee. All rights reserved.
//

import UIKit

class MainLuxeHouseCollectCell: UICollectionViewCell {
    static let identifier = "MainLuxeHouseCollectCell"
    
    let mainImageView = UIImageView()
    let likeBtn = UIButton()
    
    let houseGradeImageView = UIImageView()
    let dateAndGuestLabel = UILabel()
    lazy var firstStackView = UIStackView(arrangedSubviews: [houseGradeImageView, dateAndGuestLabel])
    
    let houseNameLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setAutoLayout()
        configureViewsOptions()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setAutoLayout() {
        self.addSubview(mainImageView)
        mainImageView.translatesAutoresizingMaskIntoConstraints = false
        mainImageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        mainImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        mainImageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        mainImageView.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.55).isActive = true
        
        mainImageView.addSubview(likeBtn)
        likeBtn.translatesAutoresizingMaskIntoConstraints = false
        likeBtn.topAnchor.constraint(equalTo: mainImageView.topAnchor, constant: 5).isActive = true
        likeBtn.trailingAnchor.constraint(equalTo: mainImageView.trailingAnchor, constant: -5).isActive = true
        likeBtn.widthAnchor.constraint(equalToConstant: 16).isActive = true
        likeBtn.heightAnchor.constraint(equalToConstant: 16).isActive = true
        
        self.addSubview(firstStackView)
        firstStackView.translatesAutoresizingMaskIntoConstraints = false
        firstStackView.topAnchor.constraint(equalTo: mainImageView.bottomAnchor, constant: 5).isActive = true
        firstStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        firstStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        firstStackView.heightAnchor.constraint(equalToConstant: 13).isActive = true
        
        houseGradeImageView.centerYAnchor.constraint(equalTo: firstStackView.centerYAnchor).isActive = true
        houseGradeImageView.heightAnchor.constraint(equalTo: firstStackView.heightAnchor).isActive = true
        dateAndGuestLabel.centerYAnchor.constraint(equalTo: firstStackView.centerYAnchor).isActive = true
        
        self.addSubview(houseNameLabel)
        houseNameLabel.translatesAutoresizingMaskIntoConstraints = false
        houseNameLabel.topAnchor.constraint(equalTo: firstStackView.bottomAnchor, constant: 5).isActive = true
        houseNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        houseNameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
      
    }
    
    private func configureViewsOptions() {
        mainImageView.contentMode = .scaleAspectFill
        mainImageView.layer.masksToBounds = true
        mainImageView.layer.cornerRadius = 2
        mainImageView.image = UIImage(named: "luxeSample")
        
        likeBtn.setImage(UIImage(named: "heart"), for: .normal)
        
        firstStackView.axis = .horizontal
        firstStackView.alignment = .leading
        firstStackView.distribution = .fill
        firstStackView.spacing = 3
        
        houseGradeImageView.image = UIImage(named: "houseGrade_Luxe")
        houseGradeImageView.contentMode = .scaleAspectFit
        houseGradeImageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        dateAndGuestLabel.text = "검증됨 ・ 우븟"
        dateAndGuestLabel.font = .systemFont(ofSize: 8, weight: .bold)
        dateAndGuestLabel.textColor = UIColor(red:0.20, green:0.00, blue:0.47, alpha:1.0)
        dateAndGuestLabel.textAlignment = .left
        
        houseNameLabel.text = "Layan 7 Bedroom Seaview residence"
        houseNameLabel.numberOfLines = 2
        houseNameLabel.font = .systemFont(ofSize: 13, weight: .semibold)
        houseNameLabel.textColor = #colorLiteral(red: 0.3221844435, green: 0.3202747703, blue: 0.3236560524, alpha: 1)
        
       
    }
}
