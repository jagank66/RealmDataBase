//
//  ViewController.swift
//  RealmdataBase
//
//  Created by Jagan on 21/11/21.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    private var realm: Realm?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
          realm =  try Realm()
            debugPrint("db path ---->\(String(describing: realm?.configuration.fileURL))")
        } catch  {
            debugPrint("there is issue in DB\(String(describing: realm?.configuration.fileURL))")
        }
        //add()
        //update()
        delete()
    }
   
    func add() {
        let employee1 = Employee(name: "jagan", salary: 200)
        let employee2 = Employee(name: "Mohan", salary: 300)
    

        do {
            try realm?.write({
                realm?.add([employee1,employee2])
            })
        } catch  {
            debugPrint(error)
        }
    }
    
    func update() {
        let employeModel = realm?.objects(Employee.self).filter("name = 'jagan'").last
        if let model = employeModel {
            do {
                try realm?.write({
                    model.age = 30
                })
            } catch  {
                debugPrint(error)
            }
        }
    }
    
    func delete() {
        let employeModel = realm?.objects(Employee.self).filter("name = 'jagan'").last
        if let model = employeModel {
            do {
                try realm?.write({
                    realm?.delete(model)
                })
            } catch  {
                debugPrint(error)
            }
        }
    }
}

