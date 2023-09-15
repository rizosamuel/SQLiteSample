//
//  ViewController.swift
//  CoreDataTrial
//
//  Created by Rijo Samuel on 15/09/23.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var tableView: UITableView!
	
	var db = DBManager()
	var emps = Array<Employee>()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		tableView.delegate = self
		tableView.dataSource = self
		
		db.insert(id: 1, name: "John", age: 24)
		db.insert(id: 2, name: "Mike", age: 25)
		db.insert(id: 3, name: "Harsh", age: 23)
		db.insert(id: 4, name: "Sachin", age: 44)
		db.insert(id: 5, name: "Rohit", age: 32)
		emps = db.read()
	}
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
	
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return emps.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "tableViewCell") ?? UITableViewCell()
		cell.textLabel?.text = "Id: " + emps[indexPath.row].id.description + ", Name: " + emps[indexPath.row].name + ", age: " + emps[indexPath.row].age.description
		return cell
	}
	
	func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
		return UITableView.automaticDimension
	}
}
