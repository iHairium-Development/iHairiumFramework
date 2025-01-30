//
//  ViewController.swift
//  Example
//
//  Created by Sergey Bogatenko on 30.01.25.
//

import UIKit

import iHairiumSDK

class ViewController: UIViewController {
    
    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setApiKey()
        
        /* for test Language
        setupCustomLanguage()
         */
        
        /* for test Custom Colors
         setupCustomColors()
         */
    }
    
    // MARK: - iHairiumSDK: keys
    
    let kApiKey: String = "your_api_key"
    let kUserId: String = "user_id"
    
    // MARK: - iHairiumSDK
    
    func setApiKey() {
        iHSDK.shared.setApiKey(apiKey: kApiKey)
    }
    
    func startDiagnostic() {
        iHSDK.shared
            .startDiagnostic(userId: kUserId,
                             parentController: self)
    }
    
    func showDiagnosticResults() {
        iHSDK.shared
            .showDiagnosticResults(userId: kUserId,
                                   parentController: self)
    }
    
    // MARK: - iHairiumSDK: Configuration
    
    func setupCustomLanguage() {
        iHSDKConfig.shared
            .setupLanguage(language: .en)
    }
    
    func setupCustomColors() {
        // background
        iHSDKConfig.shared.customColors.backgroundColor = .orange
        iHSDKConfig.shared.customColors.backgroundGradientColorStart = .red
        iHSDKConfig.shared.customColors.backgroundGradientColorEnd = .green
        
        // texts
        iHSDKConfig.shared.customColors.textColor = .cyan
        iHSDKConfig.shared.customColors.secondTextColor = .yellow
        iHSDKConfig.shared.customColors.thirdTextColor = .yellow.withAlphaComponent(0.5)
        
        // table
        iHSDKConfig.shared.customColors.tableSeparatorColor = .green.withAlphaComponent(0.4)
        iHSDKConfig.shared.customColors.tableTextAndSelectionColor = .black
        
        // buttons
        iHSDKConfig.shared.customColors.buttonTextColor = .brown
        iHSDKConfig.shared.customColors.buttonBackgroundColor = .magenta
        
        // navBar
        iHSDKConfig.shared.customColors.navBarTextColor = .gray
        iHSDKConfig.shared.customColors.navBarSliderGradientColorStart = .yellow
        iHSDKConfig.shared.customColors.navBarSliderGradientColorEnd = .darkGray
    }

    // MARK: - Action
    
    @IBAction func pressStart(_ sender: Any) {
        startDiagnostic()
    }
    
    @IBAction func pressShow(_ sender: Any) {
        showDiagnosticResults()
    }
    
}

