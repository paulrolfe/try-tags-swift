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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        addPicker()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func addPicker() {
        let tagPicker = PARTagPickerViewController()
        self.addChildViewController(tagPicker)
        tagPicker.view.frame = CGRect(x: 0, y: 20, width: CGRectGetWidth(view.bounds), height: 80)
        self.view.addSubview(tagPicker.view)
        tagPicker.view.backgroundColor = UIColor.redColor()
        tagPicker.view.autoresizingMask = UIViewAutoresizing.FlexibleWidth
        tagPicker.delegate = self
        tagPicker.allTags = ["hurfi", "durfi", "murfi", "churfi"]
        tagPicker.allowsNewTags = true
        tagPicker.chosenTags = NSMutableArray()
        tagPicker.visibilityState = .TopOnly
        tagPicker.tapToEraseTags = false
        tagPicker.allowsNewTags = false
        tagPicker.reloadCollectionViews()
    }
    
    func tagPicker(tagPicker: PARTagPickerViewController!, visibilityChangedToState state: PARTagPickerVisibilityState) {
        // Don't care.
        tagPicker.view.frame = CGRect(x: 0, y: 20, width: CGRectGetWidth(view.bounds), height: 80)
    }


}

