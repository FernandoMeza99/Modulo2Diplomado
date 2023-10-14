//
//  ShareViewController.swift
//  MyFirstApp
//
//  Created by Diplomado on 13/10/23.
//

import UIKit

class ShareViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemMint
        setElements()
        // Do any additional setup after loading the view.
    }
    
    private lazy var textView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.delegate = self
        return textView
    }()
    
    private lazy var shareButton: UIButton = {
        //let button = UIButton()
        //button.addTarget(self, action: #selector(shareButtonTapped), for: .touchUpInside)
        //button.setTitle("Share", for: .normal)
        let action = UIAction(title: "Share"){ [weak self] _ in
            self?.shareButtonTapped()
        }
        let button = UIButton(primaryAction: action)
        return button
    }()
    
    @objc func shareButtonTapped(){
        print(textView.text ?? "")
    }
    
    
    
    private func setElements( ) {
        view.addSubview(textView)
        view.addSubview(shareButton)
        NSLayoutConstraint.activate([
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            textView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            textView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            textView.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            shareButton.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 20),
            shareButton.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.3),
            shareButton.heightAnchor.constraint(equalToConstant: 50),
            shareButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ShareViewController: UITextViewDelegate {
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        if text == " " { return true}
        return ((textView.text?.count ?? 0) - range.length + text.count) < 150
    }
}
