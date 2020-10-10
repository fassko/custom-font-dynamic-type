//
//  ViewController.swift
//  CustomFontTest
//
//  Created by Kristaps Grinbergs on 22/09/2020.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var headlineLabel: UILabel!
  @IBOutlet weak var textLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    printFontFamilyNames()
    
    styleHeadline()
    styleLabel()
  }
  
  private func styleHeadline() {
    let font = UIFont(name: "ProximaNova-Bold", size: 20)!
    let fontMetrics = UIFontMetrics(forTextStyle: .headline)
    headlineLabel.font = fontMetrics.scaledFont(for: font)
    headlineLabel.adjustsFontForContentSizeCategory = true
    
    
  }
  
  private func styleLabel() {
    let font = UIFont(name: "ProximaNova-Regular", size: 17)!
    let fontMetrics = UIFontMetrics(forTextStyle: .body)
    textLabel.font = fontMetrics.scaledFont(for: font)
    textLabel.adjustsFontForContentSizeCategory = true
  }
  
  private func printFontFamilyNames() {
    for family in UIFont.familyNames {

      let sName: String = family as String
      print("family: \(sName)")
                
      for name in UIFont.fontNames(forFamilyName: sName) {
        print("name: \(name as String)")
      }
    }
    
    
//    UIFont.familyNames.forEach { family in
//      print(family)
//
//      UIFont.fontNames(forFamilyName: family).forEach { name in
//        print(name)
//      }
//    }
  }
  
}
