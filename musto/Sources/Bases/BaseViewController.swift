//
//  BaseViewController.swift
//  musto
//
//  Created by 김연준 on 22/07/2019.
//  Copyright © 2019 musto. All rights reserved.
//

import UIKit
import RxSwift

class BaseViewController: UIViewController {
  
  // MARK: Initializing
  init() {
    super.init(nibName: nil, bundle: nil)
  }
  
  required convenience init?(coder aDecoder: NSCoder) {
    self.init()
  }
  
  // MARK: Rx
  var disposeBag = DisposeBag()
  
  // MARK: Layout Constraints
  private(set) var didSetupConstraints = false
  
  override func viewDidLoad() {
    self.view.setNeedsUpdateConstraints()
    customise()
  }
  
  override func updateViewConstraints() {
    if !self.didSetupConstraints {
      self.setupConstraints()
      self.didSetupConstraints = true
    }
    super.updateViewConstraints()
  }
  
  func setupConstraints() {
    // Override point
  }
  
  func customize() {
    
  }
  
}

