//
//  order.swift
//  ImageStream
//
//  Created by tejas Pashte on 10/9/16.
//  Copyright © 2016 tejas Pashte. All rights reserved.
//

import Foundation

class Order:  NSObject , NSCoding{

    var order_id : Int?
    var product: Product?
    
    override init() {
        super.init()
    }


    
    required init?(coder aDecoder: NSCoder) {
        
        self.order_id = aDecoder.decodeObject(forKey:"order_id") as! Int?
        self.product = aDecoder.decodeObject(forKey:"product") as! Product?
        
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.order_id,forKey:"order_id")
        aCoder.encode(self.product,forKey:"product")
    }

    
}
