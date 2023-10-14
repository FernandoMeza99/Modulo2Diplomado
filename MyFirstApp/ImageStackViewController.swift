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
    @IBOutlet weak var firstCaptionedImage: CaptionedImage!
    @IBOutlet weak var secondCaptionedImage: CaptionedImage!
    @IBOutlet weak var thirdCaptionedImage: CaptionedImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if showCat {
            firstCaptionedImage.setcontent(image: "cat-1", caption: nil)
            secondCaptionedImage.setcontent(image: "cat-2", caption: "cat-2")
            thirdCaptionedImage.setcontent(image: "cat-3", caption: "cat-3")
            
        } else {
            firstCaptionedImage.setcontent(image: "dog-1", caption: "dog-1")
            secondCaptionedImage.setcontent(image: "dog-2", caption: "dog-2")
            thirdCaptionedImage.setcontent(image: "dog-3", caption: "dog-3")
        
        }
        
        
    }
    
    @IBAction func segueToShare(_ sender: UIBarButtonItem) {
        let shareViewController = ShareViewController()
        present(shareViewController, animated: true)
    }

}
