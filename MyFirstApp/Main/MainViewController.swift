//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 22/09/23.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var photoTypeSwitch: UISwitch!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var switchOptionTitle: UISwitch!
    @IBOutlet weak var titleTextField: UITextField! {
        didSet{
            titleTextField.delegate = self
        }
    }
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        if sender.tag == 0 {
            performSegue(withIdentifier: "SegueFromMainToPhotos", sender: nil)
        } else {
            performSegue(withIdentifier: "SegueFromMainToInfo", sender: nil)
        }
       
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destinationViewController = segue.destination as? ImageStackViewController  {
            destinationViewController.showCat = photoTypeSwitch.isOn
            destinationViewController.title = titleTextField.text
            
            if switchOptionTitle.isOn {
                destinationViewController.title = titleLabel.text
            }
        } else {
            segue.destination.title = "info"
        }
        
        
    }
    
    
    @IBAction func switchAccessTittle(_ sender: UISwitch) {
        
        if sender.isOn {
            titleLabel.text = "Switch prendido"
        } else {
            titleLabel.text = "Prende el switch"

        }
        
    }
    
    @IBAction func photoTypeSwitchChanged(_ sender: UISwitch) {
        sender.isOn ? nextButton.setTitle("Cats", for: .normal) : nextButton.setTitle("Dogs", for: .normal)
    }
    
    
    @IBAction func titleTextFieldEditingChanged(_ sender: UITextField) {
        
        if switchOptionTitle.isOn {
            titleLabel.text = sender.text
        } else {
            titleLabel.text = ""
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1")
        // Do any additional setup after loading the view.
    }
    
    // va a aparecer la vista
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("2")
    }
    
    //la vista ya aparecio
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("3")
    }
    
    //metodos para cuando desaperece la pantalla del usuario
    
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("4")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("5")
    }
}

extension MainViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if string == "" { return true }
        if string.rangeOfCharacter(from: .alphanumerics) == nil && string != " " {
            return false
        } else {
            return (textField.text?.count ?? 0) + string.count - range.length <= 10
        }
        
    }
}
