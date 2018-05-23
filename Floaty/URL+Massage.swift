//
//  URL+Massage.swift
//  Floaty
//
//  Created by James Zaghini on 20/5/18.
//  Copyright © 2018 James Zaghini. All rights reserved.
//

import Foundation

extension URL {

    func massagedURL() -> URL {
        var urlString = absoluteString

        if !urlString.hasPrefix("http://") && !urlString.hasPrefix("https://") {
            urlString = "https://" + urlString
        }

        let massagedURL = URL(string: urlString)
        return massagedURL ?? self
    }
}