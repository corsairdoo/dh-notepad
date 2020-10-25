//
//  Document.swift
//  dh-notepad
//
//  Created by dh on 25/05/2019.
//  Copyright © 2019 dh. All rights reserved.
//

import Cocoa

class Document: NSDocument {

    override init() {
        super.init()
        // Add your subclass-specific initialization here.
    }

    override class var autosavesInPlace: Bool {
        return true
    }
    
    var viewController: ViewController? {
        return windowControllers[0].contentViewController as? ViewController
    }
    var text:String = ""
    
    override func makeWindowControllers() {
        // Returns the Storyboard that contains your Document window.
        let storyboard = NSStoryboard(name: NSStoryboard.Name("Main"), bundle: nil)
        let windowController = storyboard.instantiateController(withIdentifier: NSStoryboard.SceneIdentifier("Document Window Controller")) as! NSWindowController
        self.addWindowController(windowController)
    }

    override func data(ofType typeName: String) throws -> Data {
        // Save the text view contents to disk
        if let textView = viewController?.textView {
            return Data(textView.string.utf8)
        }
        throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }

    override func read(from data: Data, ofType typeName: String) throws {
        if let contents = String(bytes: data, encoding: .utf8) {
            text = contents
        }
        //throw NSError(domain: NSOSStatusErrorDomain, code: unimpErr, userInfo: nil)
    }


}

