//
//  DefaultLogger.swift
//  Socket
//
//  Created by Hoang Nguyen on 2/12/23.
//

import Foundation

public class DefaultLogger: Logger {
    public static let shared = DefaultLogger()

    private init() {}

    public func log(_ type: LoggerType, _ message: String) {
        switch type {
        case .debug: debugPrint("🤖 Socket \(message)")
        case .error: debugPrint("🚫 Socket \(message)")
        }
    }
}
