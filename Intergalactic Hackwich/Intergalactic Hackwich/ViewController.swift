//
//  ViewController.swift
//  Intergalactic Hackwich
//
//  Created by Ishan Dhanani on 11/15/21.
//

import UIKit

class ViewController: UIViewController
{

    let red1 = UIImage(named: "red1")
    let red2 = UIImage(named: "red2")
    let red3 = UIImage(named: "red3")
    let blue1 = UIImage(named: "blue1")
    let blue2 = UIImage(named: "blue2")
    let blue3 = UIImage(named: "blue3")
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nvc = segue.destination as! starViewController
        nvc.starName = "Red Dwarf"
        let redArray = [red1, red2, red3]
        let blueArray = [blue1, blue2, blue3]
        
        if sender == nil
        {
            nvc.starImageReceived = blueArray.randomElement()!!
        }
        else
        {
            nvc.starImageReceived = redArray.randomElement()!!
        }
        
    }
    
    @IBAction func blueStarTapped(_ sender: Any)
    {
        performSegue(withIdentifier: "segue", sender: nil)
    }
    
    

}
