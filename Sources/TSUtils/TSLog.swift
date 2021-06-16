//
//  gpuImgLog.swift
//  Vertex
//
//  Created by Alex Linkov on 5/20/21.
//

import Foundation

public enum LogLevel: Int {
    case debug = 0, error = 1, warning = 2, info = 3
}

open class TSLog {
    
    public static let sI = TSLog()
    
    public var activeLevel: LogLevel = .error
    
    public func log(_ level: LogLevel, _ str: String, functionName: String = #function, fileName: String = #file) {
        
        if (level.rawValue >= activeLevel.rawValue) {
            
            let fname = ((fileName as NSString).lastPathComponent as NSString).deletingPathExtension
            print("TSLog :: \(functionName) :: \(fname) > \(str) ")
            print ("\(functionName)::\(level):: \(str) ")
        }
      
    }
    
    public func logCall(functionName: String = #function, fileName: String = #file) {
        if (activeLevel.rawValue <= LogLevel.warning.rawValue) {
            let fname = ((fileName as NSString).lastPathComponent as NSString).deletingPathExtension
            print("TSLog :: \(functionName) :: \(fname) ")
        }
      
    }
}
