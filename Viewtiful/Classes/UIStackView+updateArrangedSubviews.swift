//
//  UIStackView+updateArrangedSubviews.swift
//  Viewtiful
//
//  Created by 이용준 on 2021/10/11.
//

import UIKit

extension UIStackView {
    func updateArrangedSubviews<Model: Equatable, View: UIView> (
        _ newModels: [Model],
        _ oldModels: [Model],
        _ viewFactory: (Model) -> View?,
        _ viewConfig: (View, Model) -> Void = {_, _ in }
    ) {
    }
}
