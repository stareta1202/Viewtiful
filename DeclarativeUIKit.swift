//
//  DeclarativeUIKit.swift
//  Viewtiful
//
//  Created by 이용준 on 2021/10/11.
//

import UIKit
import SnapKit

class VerticalStackView: UIStackView {
  convenience init() {
    self.init(frame: .zero)
  }

  convenience init(arrangedSubviews views: [UIView]) {
    self.init()
    views.forEach({
      self.addArrangedSubview($0)
    })
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  required init(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }

  private func commonInit() {
    self.axis = .vertical
  }
}

class HorizontalStackView: UIStackView {
  convenience init() {
    self.init(frame: .zero)
  }

  convenience init(arrangedSubviews views: [UIView]) {
    self.init()
    views.forEach({
      self.addArrangedSubview($0)
    })
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  required init(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }

  private func commonInit() {
    self.axis = .horizontal
  }
}

class WrapperView: UIView {
  private let wrappedView: UIView

  init(_ view: UIView) {
    self.wrappedView = view
    super.init(frame: .zero)
    self.addSubview(view)
    view.snp.makeConstraints({ make in
      make.edges.equalToSuperview()
    })
  }

  required init?(coder: NSCoder) {
    initFromCoderNotSupported()
    return nil
  }
}

class VSpace: UIView {
  private let amount: CGFloat

  init(amount: CGFloat) {
    self.amount = amount
    super.init(frame: .zero)
    snp.makeConstraints({
      $0.height.equalTo(amount)
    })
  }

  required init?(coder: NSCoder) {
    initFromCoderNotSupported()
    return nil
  }
}

class HSpace: UIView {
  private let amount: CGFloat

  init(amount: CGFloat) {
    self.amount = amount
    super.init(frame: .zero)
    snp.makeConstraints({
      $0.width.equalTo(amount)
    })
  }

  required init?(coder: NSCoder) {
    initFromCoderNotSupported()
    return nil
  }
}
