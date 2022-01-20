//
//  ViewController.swift
//  MemeMaker
//
//  Created by Alexey on 1/20/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var bottomCaptionSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    
    var topChoices = [CaptionChoice]()
    var bottomChoices = [CaptionChoice]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let funnyChoice = CaptionChoice(emojiCaption: "🤡", itselfCaption: "You know what’s cool?")
        
        let sadChoice = CaptionChoice(emojiCaption: "🧟‍♂️", itselfCaption: "You know what makes me mad?")
        
        let loveChoise = CaptionChoice(emojiCaption: "❤️", itselfCaption: "You now what i love")
        
        topChoices = [funnyChoice, sadChoice, loveChoise]
        
        topCaptionSegmentedControl.removeAllSegments()
        
        for choice in topChoices {
            topCaptionSegmentedControl.insertSegment(withTitle: choice.emojiCaption, at: topChoices.count, animated: false)
        }
        
        topCaptionSegmentedControl.selectedSegmentIndex = 0
        
        
        let catChoice = CaptionChoice(emojiCaption: "🐱", itselfCaption: "Cats wearing hats")
        
        let dogChoice = CaptionChoice(emojiCaption: "🐕", itselfCaption: "Dogs carrying logs")
        let monkeyChoice = CaptionChoice(emojiCaption: "🐒", itselfCaption: "Monkeys being funky")
        
        bottomChoices = [catChoice, dogChoice, monkeyChoice]
        
        bottomCaptionSegmentedControl.removeAllSegments()
        
        for choice in bottomChoices {
            bottomCaptionSegmentedControl.insertSegment(withTitle: choice.emojiCaption, at: bottomChoices.count, animated: false)
        }
        
        bottomCaptionSegmentedControl.selectedSegmentIndex = 0
        
        updateLabels()
        
    }
    
    func updateLabels() -> Void {
        let topIndex = topCaptionSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomCaptionSegmentedControl.selectedSegmentIndex
        
        let topChoice = topChoices[topIndex]
        let botomChoice = bottomChoices[bottomIndex]
        
        topCaptionLabel.text = topChoice.itselfCaption
        bottomCaptionLabel.text = botomChoice.itselfCaption
    }
    
    
    @IBAction func captionPressed(_ sender: UISegmentedControl) {
        updateLabels()
    }
    
}


