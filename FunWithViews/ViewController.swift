//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var view5: UIView!
    @IBOutlet weak var view6: UIView!
    @IBOutlet weak var view7: UIView!

    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!


    override func viewDidLoad() {
        super.viewDidLoad()


        //labels
        labelOne.isHidden = true
        labelTwo.isHidden = true
        labelThree.isHidden = true
        labelFour.isHidden = true
        labelFive.isHidden = true
        labelSix.isHidden = true

    }

    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        //        let  rollDice:Int = randomDiceRoll()
        //        updateLabelWithRoll(roll: rollDice)
        updateLabelWithRoll(roll: randomDiceRoll())
        ////        updateDie()
        //
    }

    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    func viewsDisapear(){
        //Views
        view1.isHidden = true
        view2.isHidden = false
        view3.isHidden = true
        view4.isHidden = false
        view5.isHidden = true
        view6.isHidden = false
        view7.isHidden = true
    }
    func cleanLabels(){

        labelTwo.text = " "
        labelTwo.isHidden = true
        labelThree.text = " "
        labelThree.isHidden = true
        labelFour.text = " "
        labelFour.isHidden = true
        labelFive.text = " "
        labelFive.isHidden = true
        labelSix.text = " "
        labelSix.isHidden = true
    }
    func updateLabelWithRoll(roll: Int) {

        let diceScore = String(roll)

        if labelOne.isHidden {
            labelOne.text = diceScore
            labelOne.isHidden = false
        } else if labelTwo.isHidden {
            labelTwo.text = diceScore
            labelTwo.isHidden = false
        } else if labelThree.isHidden {
            labelThree.text = diceScore
            labelThree.isHidden = false
        }else if labelFour.isHidden {
            labelFour.text = diceScore
            labelFour.isHidden = false
        }else if labelFive.isHidden {
            labelFive.text = diceScore
            labelFive.isHidden = false
        } else if labelSix.isHidden {
            labelSix.text = diceScore
            labelSix.isHidden = false
        } else {
            cleanLabels()
            //                viewsDisapear()
            //            labelOne.text = diceScore
        }
    }

}


