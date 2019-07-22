//
//  ViewController.swift
//  musto
//
//  Created by Sunrin02 on 2017. 3. 9..
//  Copyright © 2017년 musto. All rights reserved.
//

import UIKit
import ManualLayout
import ReactorKit

final class MainViewController: BaseViewController {
  let dayWrapper = UIView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(dayWrapper)
    makeDayWrapper()
  }
  
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  override func setupConstraints() {
    super.setupConstraints()
    makeDayWrapper()
  }
  
  override func customize() {
    dayWrapper.backgroundColor = .black
  }
  
  override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    super.viewWillTransition(to: size, with: coordinator)
    if UIDevice.current.orientation.isLandscape {
      print("Landscape")
      makeDayWrapper()
    } else {
      print("Portrait")
    }
  }
}


extension MainViewController {
  func makeDayWrapper() {
    dayWrapper.backgroundColor = .black
    dayWrapper.top   = self.view.top
    dayWrapper.left  = self.view.left
    dayWrapper.right = self.view.right
    
    dayWrapper.height = self.view.height/3
    dayWrapper.width  = self.view.width
  }
}

extension MainViewController: ReactorKit.View {
  init(reactor: ) {
    <#code#>
  }
}
