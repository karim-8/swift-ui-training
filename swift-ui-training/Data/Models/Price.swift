//
//  Price.swift
//  swift-ui-training
//
//  Created by Karim Soliman on 08/03/2024.
//

import Foundation

struct Price : Codable {
    let value : Double?
    let currency : String?

    enum CodingKeys: String, CodingKey {

        case value = "value"
        case currency = "currency"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        value = try values.decodeIfPresent(Double.self, forKey: .value)
        currency = try values.decodeIfPresent(String.self, forKey: .currency)
    }

}
