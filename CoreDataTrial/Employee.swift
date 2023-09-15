//
//  Employee.swift
//  CoreDataTrial
//
//  Created by Rijo Samuel on 15/09/23.
//

import Foundation

class Employee {
	
	var name: String = ""
	var age: Int = 0
	var id: Int = 0
	
	init(id: Int, name: String, age: Int) {
		self.id = id
		self.name = name
		self.age = age
	}
}
