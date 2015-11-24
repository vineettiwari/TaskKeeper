//
//  List.swift
//  TaskKeeper
//
//  Created by Vineet Tiwari on 11/21/15.
//  Copyright © 2015 Vineet Tiwari. All rights reserved.
//

import UIKit

class List: NSObject, NSCoding {
  
  // MARK: - General -
  var name = ""
  var items = [ListItem]()
  
  init(name: String) {
    self.name = name
    super.init()
  }
  
  //MARK: - Coding Delegate -
  func encodeWithCoder(aCoder: NSCoder) {
    aCoder.encodeObject(name, forKey: "Name")
    aCoder.encodeObject(items, forKey: "Items")
  }
  
  required init?(coder aDecoder: NSCoder) {
    name = aDecoder.decodeObjectForKey("Name") as! String
    items = aDecoder.decodeObjectForKey("Items") as! [ListItem]
    super.init()
  }
  
}
