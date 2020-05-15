//
//  ViewController.swift
//  Dicee
//
//  Created by ANBAN, Viveka on 2020-05-15.
//  Copyright © 2020 ANBAN, Viveka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randIdx1: Int = 0
    var randIdx2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onRoll(_ sender: UIButton) {
        changeDice(imageView: diceImageView1)
        changeDice(imageView: diceImageView2)
    }

    func changeDice(imageView: UIImageView){
        let randIdx = Int.random(in: 1...6)
        let img = "dice\(randIdx)"
        imageView.image = UIImage(named: img)
    }
    
}

