//
//  main.swift
//  PeopleDatabase
//
//  Created by Chao Xu on 15/6/1.
//  Copyright (c) 2015年 Chao Xu. All rights reserved.
//

import Foundation

var response: String
var people: [Person] = []

do{
    var newPerson = Person()
    newPerson.enterInfo()
    people.append(newPerson)
    newPerson.printInfo()
    println("Do you want to enter another name?(y/n)")
    response = input()
}while(response == "y")

println("Number of people in the database: \(people.count)")

for onePerson in people  {
    onePerson.printInfo()
}
