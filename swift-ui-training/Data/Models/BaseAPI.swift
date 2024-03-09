
import Foundation

struct BaseAPI : Codable {
	let header : Header?
	let filters : [String]?
	let products : [Products]?

	enum CodingKeys: String, CodingKey {

		case header = "header"
		case filters = "filters"
		case products = "products"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		header = try values.decodeIfPresent(Header.self, forKey: .header)
		filters = try values.decodeIfPresent([String].self, forKey: .filters)
		products = try values.decodeIfPresent([Products].self, forKey: .products)
	}

}
