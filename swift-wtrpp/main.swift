//
//  main.swift
//  swift-wtrpp
//
//  Created by Alejandro D on 22/06/20.
//  Copyright © 2020 Alejandro D. All rights reserved.
//

//MARK: - Current Chapter: 1.6.1
import Foundation


func novice() {
    class Container {
        var g : [Container]?
        var n : Int
        var x : Double
        
        public func getAmount() -> Double {
            return self.x
            
        }

        public func addWater(x : Double) {
            let y : Double = x / Double(self.n);
            
            for i in 0...self.n{
                self.g![i].x = self.g![i].x + y
            }
        }
        
        init() {
            self.n = 1
            self.x = 0
        }
        
    }
}

func reference() {
    class Container{
        
    }
}
