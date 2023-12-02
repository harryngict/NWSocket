//
//  Logger.swift
//  Socket
//
//  Created by Hoang Nguyen on 2/12/23.
//

import Foundation

public protocol Logger {
    /// Logs a message with the specified logging type.
    ///
    /// - Parameters:
    ///   - type: The type of logging, indicating the severity or purpose of the log message.
    ///   - message: The message to be logged.
    func log(_ type: LoggerType, _ message: String)
}

public enum LoggerType {
    /// Indicates an error logging type.
    case error

    /// Indicates a debug logging type.
    case debug
}
