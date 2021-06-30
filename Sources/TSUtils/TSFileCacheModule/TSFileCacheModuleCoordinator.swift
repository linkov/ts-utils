//
//  TSFileCacheModuleCoordinator.swift
//  TransferModular
//
//  Created by Alex Linkov on 6/22/21.
//

import Foundation

public typealias TSFileCache = TSFileCacheModuleCoordinator

extension TSFileCacheModuleCoordinator: TSFileCacheModuleInterface {
   
    public func clearAll() throws {
        try cachedFiles.forEach { URL in
            
           try uncache(cachedFileURL: URL)
        }
    }
    
    
    public func cache(tmpFileURL: URL) throws -> URL   {
        
        let cacheDirectoryURL =
            try FileManager.default.url(for: .cachesDirectory,
                                        in: .userDomainMask,
                                        appropriateFor: nil,
                                        create: false)
        let storeURL = cacheDirectoryURL.appendingPathComponent(tmpFileURL.lastPathComponent)
        
        
        if FileManager.default.fileExists(atPath: storeURL.path) {
            try? FileManager.default.removeItem(at: storeURL)
        }
        
        try FileManager.default.copyItem(at: tmpFileURL, to: storeURL)
        
        
//        if (FileManager.default.fileExists(atPath: storeURL.path)) {
//          _ =  try FileManager.default.replaceItemAt(storeURL, withItemAt: tmpFileURL)
//        } else {
//            try FileManager.default.copyItem(at: tmpFileURL, to: storeURL)
//        }
        
        
        return storeURL
    }
    
    public func uncache(cachedFileURL: URL) throws {
        
        let handle = cachedFiles.first { url in
            return url == cachedFileURL
        }
        
        guard let h = handle else {
            fatalError()
        }
        
        try FileManager.default.removeItem(at: h)
    }
    
    
}


public class TSFileCacheModuleCoordinator: NSObject {
    
    var cachedFiles: [URL] = []
}
