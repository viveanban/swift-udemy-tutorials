//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by ANBAN, Viveka on 2020-05-19.
//  Copyright © 2020 ANBAN, Viveka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onAsk(_ sender: Any) {
        generateRandomAnswer()
    }
    
    func generateRandomAnswer(){
        let randAnswer = Int.random(in: 1...5)
        imageView.image = UIImage(named: "ball\(randAnswer)")
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        generateRandomAnswer()
    }
    
}

