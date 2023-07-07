//
//  ViewController.swift
//  tictactoe
//
//  Created by Antonio on 6/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    enum Turn {
        case Naught
        case Cross
    }

    var firstTurn = Turn.Cross
    var currentTurn = Turn.Cross
    
    
    var naught = "O"
    var cross  = "X"
    
    
    
    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    var buttonBoard = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        initBoard()
        buttonBoard = [a1,a2,a3,b1,b2,b3,c1,c2,c3]
    }

    @IBAction func boardTapAction(_ sender: UIButton) {
        addToBoard(sender)
        if boardFull() {
         resultAlert(title: "Draw")
        } else {
            
        }
    }
    
    
    func resultAlert(title:String) {
        let ac = UIAlertController(title: title, message: nil, preferredStyle: .actionSheet)
        ac.addAction(UIAlertAction(title: "Reset", style: .default, handler: { (_) in
            self.resetBoard()
        }))
        self.present(ac, animated: true)
    }
    
    func initBoard(){
        
    }
    
    func boardFull() -> Bool {
        for button in buttonBoard {
            if button.title(for: .normal) == nil {
                return false
            }
        }
        return true
    }
    
    func resetBoard(){
        for button in buttonBoard {
            button.setTitle(nil, for: .normal)
            button.isEnabled = true
        }
        if firstTurn == Turn.Naught {
            firstTurn = Turn.Cross
            turnLabel.text = cross
        } else {
            firstTurn = Turn.Naught
            turnLabel.text = naught
         }
        currentTurn = firstTurn
    }
    
    func addToBoard(_ sender: UIButton) {
        
        if (sender.title(for: .normal) == nil ){
            if (currentTurn == Turn.Naught) {
                sender.setTitle(naught, for: .normal)
                currentTurn = Turn.Cross
                turnLabel.text = cross
            } else if (currentTurn == Turn.Cross) {
                sender.setTitle(cross, for: .normal)
                currentTurn = Turn.Naught
                turnLabel.text = naught
            }
            sender.isEnabled = false
        }
//
    }
    
    
}

