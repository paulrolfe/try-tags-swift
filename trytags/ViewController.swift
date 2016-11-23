//
//  ViewController.swift
//  trytags
//
//  Created by Paul Rolfe on 1/4/16.
//  Copyright © 2016 Paul Rolfe. All rights reserved.
//

import UIKit
import PARTagPicker

class ViewController: UIViewController, PARTagPickerDelegate {
    
    let tagPicker = PARTagPickerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        addPicker()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func addPicker() {
        self.addChildViewController(tagPicker)
        tagPicker.view.frame = CGRect(x: 0, y: 20, width: view.bounds.width, height: 80)
        self.view.addSubview(tagPicker.view)
        tagPicker.view.backgroundColor = UIColor.blue
        tagPicker.view.autoresizingMask = UIViewAutoresizing.flexibleWidth
        tagPicker.delegate = self
        tagPicker.reloadCollectionViews()
        tagPicker.allTags = ["hurfi", "durfi", "murfi", "churfi"]
        tagPicker.allowsNewTags = true
        tagPicker.chosenTags = NSMutableArray()
        tagPicker.tapToEraseTags = true
        tagPicker.allowsNewTags = false
        tagPicker.visibilityState = .topAndBottom
    }
    
    func tagPicker(_ tagPicker: PARTagPickerViewController!, visibilityChangedTo state: PARTagPickerVisibilityState) {
        // Don't care.
        tagPicker.view.frame = CGRect(x: 0, y: 20, width: view.bounds.width, height: 80)
    }
}

