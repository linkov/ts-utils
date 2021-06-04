//
//  gpuImgLog.swift
//  Vertex
//
//  Created by Alex Linkov on 5/20/21.
//

import Foundation

public enum LogLevel: String {
    case error, warning, info, debug
}

public class TSLog {
    
    static let sI = TSLog()
    
    public var activeLevel: LogLevel = .error
    
    func log(_ level: LogLevel, _ str: String, functionName: String = #function) {
        if (level == activeLevel) {
            print ("\(functionName)::\(level):: \(str) ")
        }
      
    }
    
    func logCall(functionName: String = #function, fileName: String = #file) {
        if (activeLevel == .debug) {
            let fname = ((fileName as NSString).lastPathComponent as NSString).deletingPathExtension
            print("TSLog :: \(functionName) :: \(fname) ")
        }
      
    }
}
