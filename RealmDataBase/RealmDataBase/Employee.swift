//
//  Employee.swift
//  RealmdataBase
//
//  Created by Jagan on 21/11/21.
//

import Foundation
import RealmSwift

class Employee: Object {
   @objc dynamic var name: String?
    @objc dynamic var salary: Double = 0.0
    @objc dynamic var age: Int = 0
    @objc dynamic var gender: String?
    @objc dynamic var employeeId: Int = 0
    @objc dynamic var address: String?
    
    convenience init(name: String?, salary: Double) {
        self.init()
        self.name = name
        self.salary = salary
    }
  
}

class Students: Object {
   @objc dynamic var name: String?
   @objc dynamic var group: String?
   @objc dynamic var section: String?
   @objc dynamic var studentId: Int = 0
}

class Parents: Object {
    @objc dynamic var name: String?
    @objc dynamic var age: Int = 0
}
