//
//  Tasks.swift
//  VisualToDoList
//
//  Created by Pratheeksha Ravindra Naik on 2018-10-22.
//  Copyright © 2018 com/uregina. All rights reserved.
//

import UIKit

class Tasks {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var notes: String
    var dueDate: Date
    var dueTime: timeval
    var priority: String
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, notes: String, dueDate: Date, dueTime: timeval, priority: String){
        self.name = name
        self.photo = photo
        self.notes = notes
        self.dueDate = dueDate
        self.dueTime = dueTime
        self.priority = priority
        
        if name.isEmpty {
            return nil
        }
        
        
    }
    
    
}
