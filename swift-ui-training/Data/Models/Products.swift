/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Products : Codable {
	let name : String?
	let type : String?
	let id : Int?
	let color : String?
	let imageURL : String?
	let colorCode : String?
	let available : Bool?
	let releaseDate : Int?
	let description : String?
	let longDescription : String?
	let rating : Double?
	let price : Price?

	enum CodingKeys: String, CodingKey {

		case name = "name"
		case type = "type"
		case id = "id"
		case color = "color"
		case imageURL = "imageURL"
		case colorCode = "colorCode"
		case available = "available"
		case releaseDate = "releaseDate"
		case description = "description"
		case longDescription = "longDescription"
		case rating = "rating"
		case price = "price"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		name = try values.decodeIfPresent(String.self, forKey: .name)
		type = try values.decodeIfPresent(String.self, forKey: .type)
		id = try values.decodeIfPresent(Int.self, forKey: .id)
		color = try values.decodeIfPresent(String.self, forKey: .color)
		imageURL = try values.decodeIfPresent(String.self, forKey: .imageURL)
		colorCode = try values.decodeIfPresent(String.self, forKey: .colorCode)
		available = try values.decodeIfPresent(Bool.self, forKey: .available)
		releaseDate = try values.decodeIfPresent(Int.self, forKey: .releaseDate)
		description = try values.decodeIfPresent(String.self, forKey: .description)
		longDescription = try values.decodeIfPresent(String.self, forKey: .longDescription)
		rating = try values.decodeIfPresent(Double.self, forKey: .rating)
		price = try values.decodeIfPresent(Price.self, forKey: .price)
	}

}