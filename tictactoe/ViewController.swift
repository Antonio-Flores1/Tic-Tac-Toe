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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func boardTapAction(_ sender: UIButton) {
        
        
    }
    
    
    
}

