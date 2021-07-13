//
//  BaseButton.swift
//  RoundedShadorButton
//
//  Created by 김종권 on 2021/07/13.
//

import Foundation
import UIKit

class BaseButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)

        configure()
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure() {}
    func bind() {}
}
