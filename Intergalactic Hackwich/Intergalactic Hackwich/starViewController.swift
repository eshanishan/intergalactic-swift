//
//  starViewController.swift
//  Intergalactic Hackwich
//
//  Created by Ishan Dhanani on 11/16/21.
//

import UIKit

class starViewController: UIViewController
{
    
    @IBOutlet weak var starImageView: UIImageView!
    
    var starName = String()
    var starImageReceived = UIImage()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print(starName)
        starImageView.image = starImageReceived
    }
    

    
   

}
