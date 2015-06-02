//
//  Person.swift
//  peopleDatabase
//
//  Created by Chao Xu on 15/6/1.
//  Copyright (c) 2015年 Chao Xu. All rights reserved.
//

import Foundation

class Person{
    var firstName = ""
    var lastName = ""
    var age = 0
    
    func input() -> String{
        let keyboard = NSFileHandle.fileHandleWithStandardInput()
        let inputData = keyboard.availableData
        let rawString = NSString(data: inputData, encoding: NSUTF8StringEncoding)
        
        if let string = rawString{
            return string.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
        }else{
            return "Invalid input"
        }
    }
    
    func changeFirstName(newFirstName:String){
        firstName = newFirstName
    }
    
    func enterInfo(){
        println("What is the first name?")
        firstName = input()
        println("What is \(firstName)'s last name")
        lastName = input()
        println("How old is \(firstName) \(lastName)")
        let userInput = input().toInt()
        if let number = userInput{
            age = number
        }
    }
    
    func printInfo(){
        println("\(firstName) \(lastName) is \(age) years old")
    }
}
