//
//  Cache.swift
//  PracticeRandomUsers
//
//  Created by Percy Ngan on 11/1/19.
//  Copyright © 2019 Lamdba School. All rights reserved.
//

import Foundation

class Cache<Key, Value> where Key : Hashable {
	private let queue = DispatchQueue(label: "General Cache Queue")

	var imageDict: [Key: Value] = [:]

	func cache(value: Value, for key: Key) {
		queue.async {
			self.imageDict[key] = value
		}
	}

	func fetch(key: Key) -> Value? {
		return queue.sync {
			imageDict[key]
		}
	}
}
