//
//  ViewController.swift
//  Assignment2.bbutu20
//
//  Created by Beka Buturishvili on 10.11.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var safetyImage: UIImageView!
    @IBOutlet var backgroundImage: UIImageView!
    @IBOutlet var confidentialImage: UIImageView!
    @IBOutlet var languageImage: UIImageView!
    @IBOutlet var logoutImage: UIImageView!
    
    @IBOutlet var profileView: UIView!
    @IBOutlet var additionalFunctionsView: UIView!
    
    @IBOutlet var parametersLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var additionalFunctionsLabel: UILabel!
    @IBOutlet var safetyLabel: UILabel!
    @IBOutlet var backgroundLabel: UILabel!
    @IBOutlet var confidentialLabel: UILabel!
    @IBOutlet var languageLabel: UILabel!
    @IBOutlet var logoutLabel: UILabel!
    
    @IBOutlet var profileConstraint: NSLayoutConstraint!
    @IBOutlet var parameteresConstraint: NSLayoutConstraint!
    
    @IBOutlet var titleConstraint: NSLayoutConstraint!
    @IBOutlet var safetyConstraint: NSLayoutConstraint!
    @IBOutlet var backgroundConstraint: NSLayoutConstraint!
    @IBOutlet var confidentialConstraint: NSLayoutConstraint!
    @IBOutlet var languageConstraint: NSLayoutConstraint!
    @IBOutlet var logoutConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profileImage.alpha = 0
        safetyImage.alpha = 0
        backgroundImage.alpha = 0
        confidentialImage.alpha = 0
        languageImage.alpha = 0
        logoutImage.alpha = 0
        
        parametersLabel.alpha = 0
        nameLabel.alpha = 0
        additionalFunctionsLabel.alpha = 0
        safetyLabel.alpha = 0
        backgroundLabel.alpha = 0
        confidentialLabel.alpha = 0
        languageLabel.alpha = 0
        logoutLabel.alpha = 0
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        profileImage.layer.cornerRadius = profileImage.layer.frame.height / 2
        safetyImage.layer.cornerRadius = safetyImage.layer.frame.height / 2
        backgroundImage.layer.cornerRadius = backgroundImage.layer.frame.height / 2
        confidentialImage.layer.cornerRadius = confidentialImage.layer.frame.height / 2
        languageImage.layer.cornerRadius = languageImage.layer.frame.height / 2
        logoutImage.layer.cornerRadius = logoutImage.layer.frame.height / 2
        
        profileView.layer.cornerRadius = 15
        additionalFunctionsView.layer.cornerRadius = 15
        
        UIView.animate(withDuration: 0.5,
                        delay: 0,
                       options: .curveLinear,
                       animations: {[self] in
            profileConstraint.priority = .defaultLow
            parameteresConstraint.priority = .defaultLow
            
            titleConstraint.priority = .defaultLow
            safetyConstraint.priority = .defaultLow
            backgroundConstraint.priority = .defaultLow
            confidentialConstraint.priority = .defaultLow
            languageConstraint.priority = .defaultLow
            logoutConstraint.priority = .defaultLow
            
            profileImage.alpha = 1
            safetyImage.alpha = 1
            backgroundImage.alpha = 1
            confidentialImage.alpha = 1
            languageImage.alpha = 1
            logoutImage.alpha = 1
            
            parametersLabel.alpha = 1
            nameLabel.alpha = 1
            additionalFunctionsLabel.alpha = 1
            safetyLabel.alpha = 1
            backgroundLabel.alpha = 1
            confidentialLabel.alpha = 1
            languageLabel.alpha = 1
            logoutLabel.alpha = 1
            
            self.view.layoutIfNeeded()
        })
    }
}

