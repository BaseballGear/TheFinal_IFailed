//
//  TableView.swift
//  BibleBooks
//
//  Created by 01, test on 12/14/15.
//  Copyright © 2015 cuw. All rights reserved.
//

import WatchKit
import Foundation


class TableView: WKInterfaceController {
    
    @IBOutlet var bookLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?)
    {
        super.awakeWithContext(context)
        
        
        var bibleBooksString = "Genesis,Exodus,Leviticus,Numbers,Deuteronomy,Joshua,Judges,Ruth,1 Samuel,2 Samuel,1 Kings,2 Kings,1 Chronicles,2 Chronicles,Ezra,Nehemiah,Esther,Job,Psalms,Proverbs,Ecclesiastes,Song of Solomon,Isaiah,Jeremiah,Lamentations,Ezekiel,Daniel,Hosea,Joel,Amos,Obadiah,Jonah,Micah,Nahum,Habakkuk,Zephaniah,Haggai,Zechariah,Malachi,Matthew,Mark,Luke,John,Acts,Romans,1 Corinthians,2 Corinthians,Galatians,Ephesians,Philippians,Colossians,1 Thessalonians,2 Thessalonians,1 Timothy,2 Timothy,Titus,Philemon,Hebrews,James,1 Peter,2 Peter,1 John,2 John,3 John,Jude,Revelation"
        var bibleBooksArray = bibleBooksString.componentsSeparatedByString(",")
        for book in bibleBooksArray
        {
            print(book)
        }
        
        var totalBooks = bibleBooksArray.count
        
        var num = arc4random_uniform(totalBooks)
        
        bookLabel = num
        
        var i = 0
        
        var wrongGuess = 0
        
        var totalGuess = 0

        if(bookLabel == bibleBooksArray[i])
        {
            totalGuess++
            bibleBooksArray.removeAtIndex(i)
            i = i + 1
            CorrectAnswerSingleton.correctAnswer = bookLabel as! String
        }
            
        else
        {
            wrongGuess++
            totalGuess++
        }
        
        
        
    
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
