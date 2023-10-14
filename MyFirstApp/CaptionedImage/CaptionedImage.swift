//
//  CaptionedImage.swift
//  MyFirstApp
//
//  Created by Diplomado on 13/10/23.
//

import UIKit

class CaptionedImage: UIView {

    @IBOutlet weak var captionedLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    /*
     
     ----- PRIMER METODO -----
    @IBOutlet weak var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    
    private func setUpView() {
        Bundle.main.loadNibNamed("CaptionedImage", owner: self)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
    }
     */
    
    /*
     
     ----- SEGUNDO METODO ----
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    
    // CON ARREGLO
    
    private func setUpView() {
        guard let contentView = Bundle.main.loadNibNamed("CaptionedImage", owner: self)?.first as? UIView else {return}
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
    }
     
     */
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    func setcontent( image:String, caption: String?){
        captionedLabel.text = caption
        captionedLabel.isHidden = caption == nil
        imageView.image = UIImage(named: image)
    }
    
    
    private func setUpView() {
        //guard let contentView = Bundle.main.loadNibNamed("CaptionedImage", owner: self)?.first as? UIView else {return}
        guard let contentView = UINib(nibName: "CaptionedImage", bundle: nil).instantiate(withOwner: self).first as? UIView else { return }
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
        
    }
    
    
    

}
