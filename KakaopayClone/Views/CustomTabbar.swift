//
//  CustomTabbar.swift
//  KakaopayClone
//
//  Created by Tophun on 2021/10/28.
//

import UIKit
import SnapKit
import Then

class CustomTabbar: UIView {
  
  private lazy var hStack = UIStackView().then {
    $0.axis = .horizontal
    $0.distribution = .fillEqually
  }
  
  // MARK: Initialize
  override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // MARK: Setup
  private func setup() {
    setupView()
    setupLayout()
  }
  
  private func setupView() {
    addSubview(hStack)
  }
  
  private func setupLayout() {
    hStack.snp.makeConstraints {
      $0.edges.equalToSuperview()
    }
  }
}
