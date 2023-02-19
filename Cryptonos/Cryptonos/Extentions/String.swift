//
//  String.swift
//  Cryptonos
//
//  Created by Христиченко Александр on 2023-02-19.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
    }
}
