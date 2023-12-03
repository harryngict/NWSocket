# NWSocket

`NWSocket` is a Swift class that represents a socket connection conforming to the `SocketInterface`. It provides a convenient interface for managing socket connections, handling connection events, and performing read and write operations.

## Features

- **Connection Status:** Track the current connection status with the `isConnected` property.
- **Delegate Pattern:** Implement the `SocketDelegate` protocol to receive callbacks for various socket events.
- **Configurable:** Customize the socket configuration, dispatch queues, and logging strategy.

## Integration

### Integration through CocoaPods

To integrate NetworkCompose into your Xcode project using CocoaPods, add the following to your `Podfile`:

```ruby
pod 'NWSocket'
```

then run:
```bash
pod install
```
###  Integration through Swift Package Manager (SPM)
To integrate NetworkCompose using Swift Package Manager, add the following to your Package.swift file:
```swift
dependencies: [
    .package(url: "https://github.com/harryngict/NWSocket.git", from: "0.0.1")
],
targets: [
    .target(
        name: "YourTargetName",
        dependencies: ["NWSocket"]
    )
]
```
Replace "YourTargetName" with the name of your target. Then, run:
```bash
swift package update
```

## Usage

### Initialization

```swift
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
                  withTag: String) {
    debugPrint("didConnect: \(socket), error: \(String(describing: error)), withTag: \(withTag)")

  }
}
```
