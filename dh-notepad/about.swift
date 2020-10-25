//
//  about.swift
//  dh-notepad
//
//  Created by dh on 28/09/2019.
//  Copyright © 2019 dh. All rights reserved.
//

import Cocoa

class about: NSViewController {

    @IBOutlet weak var labelGitLink: NSTextField!
    @IBOutlet weak var labelVersion: NSTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        
        labelVersion.stringValue = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String ?? "1"
        
    }
    
}
