//
//  ViewController.swift
//  dh-notepad
//
//  Created by dh on 25/05/2019.
//  Copyright © 2019 dh. All rights reserved.
//

import Cocoa

//https://www.meandmark.com/blog/2017/08/creating-a-document-based-mac-application-using-swift-and-storyboards/

class ViewController: NSViewController {

    @IBOutlet var textView: NSTextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textView.isAutomaticQuoteSubstitutionEnabled = false
    }
    
    override func viewDidAppear() {
        super.viewDidAppear()
        if let document = self.view.window?.windowController?.document as? Document {
            textView.string = document.text
        }
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

