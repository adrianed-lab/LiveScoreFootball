//
//  UiImageView+Extansion.swift
//  DiplomProject_LiveScoreFootball
//
//  Created by admin on 20.08.22.
//

import Foundation
import UIKit


extension UIImageView {
    func getCountryFlaf(codeCountry: String) {
        
        guard let imageUrl = URL(string: "\(Constants.baseURLForCountryImage)\(codeCountry)\(Constants.countryImagePrefixURL)") else {return}
        DispatchQueue.global(qos: .utility).async {
            if let imageData = try? Data(contentsOf: imageUrl) {
                DispatchQueue.main.async {
                    self.image = UIImage(data: imageData)
                }
            }
        }
    }
    func getLogoTeam(teamId: String) {
        guard let imageUrl = URL(string: "\(Constants.baseURLForTeamLogo)\(teamId)\(Constants.teamlogoPrefixURL)") else {return}
        DispatchQueue.global(qos: .utility).async {
            if let imageData = try? Data(contentsOf: imageUrl) {
                DispatchQueue.main.async {
                    self.image = UIImage(data: imageData)
                }
            }
        }
    }
}