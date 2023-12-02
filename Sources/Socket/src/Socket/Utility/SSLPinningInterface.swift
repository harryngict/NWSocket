//
//  SSLPinning.swift
//  Socket
//
//  Created by Hoang Nguyen on 2/12/23.
//

import Foundation

public protocol SSLPinning {
    /// The host for which SSL pinning is configured.
    var host: String { get }

    /// A set of hash keys representing the expected SSL certificate fingerprints for pinning.
    ///
    /// The SSL pinning mechanism checks the server's SSL certificate against these hash keys for verification.
    var hashKeys: Set<String> { get }
}
