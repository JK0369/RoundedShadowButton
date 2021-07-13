//
//  RoundedShadowButton.swift
//  RoundedShadorButton
//
//  Created by 김종권 on 2021/07/13.
//

import Foundation
import UIKit

class RoundedShadowButton: BaseButton {
    var isBorderStyle = true {
        didSet { bind() }
    }

    override func configure() {
        super.configure()

        backgroundColor = .white
        setTitleColor(.black, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 14.0, weight: .bold)
        imageEdgeInsets = UIEdgeInsets(top: 0.0, left: -4.0, bottom: 0.0, right: 0.0)
    }

    override func bind() {
        super.bind()

        if isBorderStyle {
            layer.cornerRadius = 13.0
            layer.borderWidth = 1.0
            layer.borderColor = UIColor.systemGray2.cgColor

            layer.shadowColor = UIColor.black.cgColor
            layer.shadowOffset = CGSize(width: 3.0, height: 3.0) /// 그림자와 해당 view와의 거리 (width는 x좌표, height는 y좌표)
            layer.shadowOpacity = 0.1 /// 그림자의 불투명도
            layer.shadowRadius = 3.0 /// 그림자의 크기

            contentEdgeInsets = UIEdgeInsets(top: 4.0, left: 16.0, bottom: 4.0, right: 19.0)
        } else {
            layer.cornerRadius = 0.0
            layer.borderWidth = 0.0
            layer.shadowOpacity = 0.0

            contentEdgeInsets = UIEdgeInsets(top: 4.0, left: 4.0, bottom: 4.0, right: 8.0)
        }
    }
}
