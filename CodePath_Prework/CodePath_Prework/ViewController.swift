//
//  ViewController.swift
//  CodePath_Prework
//
//  Created by Yuhan W on 12/31/23.
//

import Cocoa

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.wantsLayer = true
    }

    override var representedObject: Any? {
        didSet {
            // Update the view, if already loaded.
        }
    }

    @IBAction func changeBackgroundColor(_ sender: Any) {
        // Change the background color to a random color
        let randomColor = changeColor()
        self.view.layer?.backgroundColor = randomColor.cgColor
        
    }
}

    // Extension to generate a random color
    func changeColor() -> NSColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return NSColor(red: red, green: green, blue: blue, alpha: 0.5)
    
}
