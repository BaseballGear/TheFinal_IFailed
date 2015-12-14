//
//  PickerView.swift
//  BibleBooks
//
//  Created by 01, test on 12/14/15.
//  Copyright © 2015 cuw. All rights reserved.
//

import WatchKit
import Foundation


class PickerView: WKInterfaceController {

    @IBOutlet var picker: WKInterfacePicker!
    
    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        var thePickerItems = [WKPickerItem]()
        {
                thePickerItems.append(WKPickerItem())
                thePickerItems = CorrectAnswerSingleton.correctAnswer
        }
        
        self.picker.setItems(thePickerItems)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
