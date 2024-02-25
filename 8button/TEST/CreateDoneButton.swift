//
//  CreateDoneButton.swift
//  8button
//
//  Created by Artur Vladymcev on 24.02.24.
//

import SwiftUI
import UIKit
@IBOutlet weak var txtNumber: UITextField!
  override func viewDidLoad()
    {
        super.viewDidLoad()
     
        //--- add UIToolBar on keyboard and Done button on UIToolBar ---//
        self.addDoneButtonOnKeyboard()
        

    }
  
  func addDoneButtonOnKeyboard()
  {
    let doneToolbar: UIToolbar = UIToolbar(frame: CGRectMake(0, 0, 320, 50))
    doneToolbar.barStyle = UIBarStyle.Default
    
    let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.FlexibleSpace, target: nil, action: nil)
    let done: UIBarButtonItem = UIBarButtonItem(title: "Aceptar", style: UIBarButtonItemStyle.Done, target: self, action: Selector("doneButtonAction"))
    
    var items = [UIBarButtonItem]()
    items.append(flexSpace)
    items.append(done)
    
    doneToolbar.items = items
    doneToolbar.sizeToFit()
    
    self.txtNumber.inputAccessoryView = doneToolbar
    
  }
  
  func doneButtonAction()
  {
    self.txtNumber.resignFirstResponder()
  }
