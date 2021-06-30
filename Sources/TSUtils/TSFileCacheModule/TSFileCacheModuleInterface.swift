//
//  TSFileCacheModuleInterface.swift
//  TransferModular
//
//  Created by Alex Linkov on 6/22/21.
//

import Foundation

public protocol TSFileCacheModuleInterface {
    
    func cache(tmpFileURL: URL) throws -> URL
    func uncache(cachedFileURL: URL) throws
    func clearAll() throws
}

protocol TSFileCacheModuleDelegate {
    
}
