//
//  ViewController.swift
//  Example
//
//  Created by Hoang Nguyen on 3/12/23.
//

import NWSocket
import UIKit

final class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let socket = Socket()
        socket.delegate = self
        do {
            try socket.connect(toHost: "your host", onPort: 1234)
        } catch {
            debugPrint("Error: \(error.localizedDescription)")
        }
    }
}

extension ViewController: SocketDelegate {
    func didReady(_ socket: SocketInterface, host: String, port: UInt16) {
        debugPrint("didReady: \(socket), host: \(host), port: \(port)")
    }

    func didReceive(_ socket: SocketInterface, data: Data) {
        debugPrint("didReceive: \(socket), data: \(data)")
    }

    func didDisconnect(_ socket: SocketInterface) {
        debugPrint("didDisconnect: \(socket)")
    }

    func didConnect(_ socket: SocketInterface,
                    withError error: Error?,
                    withTag: String)
    {
        debugPrint("didConnect: \(socket), error: \(String(describing: error)), withTag: \(withTag)")
    }
}
