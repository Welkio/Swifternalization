//
//  BaseExpression.swift
//  Swifternalization
//
//  Created by Tomasz Szulc on 28/06/15.
//  Copyright (c) 2015 Tomasz Szulc. All rights reserved.
//

/** 
Contains base expressions that matches every country.
*/
class SharedBaseExpression: SharedExpressionProtocol {
    
    /** 
    Return expressions that matches every country.
    */
    static func allExpressions() -> [SharedExpression] {
        return [
            
            /** 
            Matches value equals 1.
            */
            SharedExpression(identifier: "one", pattern: "ie:x=1"),
            
            /** 
            Matches value greater than 1.
            */
            SharedExpression(identifier: ">one", pattern: "ie:x>1"),
            
            /** 
            Matches value equals 2.
            */
            SharedExpression(identifier: "two", pattern: "ie:x=2"),
            
            /** 
            Matches value other than 1.
            */
            /**
             Swifternalization internally uses this identifier to match expressions, however, this conflicts with the string translation files we use to localize our strings because we use the key "other" within our JSON language files. This is only an issue on Xcode 10+.
             Make sure you do not use this identifier key within any language JSON files
            */
            SharedExpression(identifier: "other-do-not-remove", pattern: "exp:(^[^1])|(^\\d{2,})")
        ]
    }
}
