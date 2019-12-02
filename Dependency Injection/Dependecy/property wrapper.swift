//
//  property wrapper.swift
//  Dependency Injection
//
//  Created by mohamed hashem on 12/2/19.
//  Copyright © 2019 mohamed hashem. All rights reserved.
//

import Foundation


@propertyWrapper
struct SetRectangle {
    
    private var maximum: Int
    private var number = 0
    
    var wrappedValue: Int {
        get { return number }
        set { number = min(newValue, 12) }
    }
    init() {
        maximum = 12
        number = 0
    }
    init(wrappedValue: Int) {
        maximum = 12
        number = min(wrappedValue, maximum)
    }
    init(wrappedValue: Int, maximum: Int) {
        self.maximum = maximum
        number = min(wrappedValue, maximum)
    }
}

// inject SetRectangle into property of Rectangle
struct Rectangle {
    
    @SetRectangle var height: Int
    @SetRectangle var width: Int
    @SetRectangle(wrappedValue: 10, maximum: 30) var WidthWithInjection: Int
    
    func useIt() {
        print(WidthWithInjection)
    }
}
