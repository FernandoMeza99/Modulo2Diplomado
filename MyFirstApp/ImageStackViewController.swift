//
//  ImageStackViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 29/09/23.
//

import UIKit

class ImageStackViewController: UIViewController {
    
    var showCat = false
    
    @IBOutlet weak var buttonShare: UIButton!
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if showCat {
            firstImageView.image = UIImage(named: "cat-1")
            secondImageView.image = UIImage(named: "cat-2")
            thirdImageView.image = UIImage(named: "cat-3")
        } else {
            firstImageView.image = UIImage(named: "dog-1")
            secondImageView.image = UIImage(named: "dog-2")
            thirdImageView.image = UIImage(named: "dog-3")
        }
        
        
    }
    

}
