//
//  RandomUser.swift
//  PracticeRandomUsers
//
//  Created by Percy Ngan on 11/1/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation

struct UsersList: Codable {
	let results: [RandomUser]
}

struct RandomUser: Codable {
	let name: Name
	let email: String
	let id: ID
	let phone: String
	let cell: String
	let picture: Pictures
}

struct Name: Codable {
	let title: String
	let first: String
	let last: String
}

struct Pictures: Codable {
	let large: String
	let medium: String
	let thumbnail: String
}

struct ID: Codable {
	let name: String
	let value: String
}
