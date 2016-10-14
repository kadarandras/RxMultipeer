import Foundation
import RxSwift
import MultipeerConnectivity

// The protocol that adapters must adhere to.
// We want a concise common interface for p2p related operations.
public protocol Session {

#if swift(>=2.2)
  associatedtype I
#else
  typealias I
#endif

  var iden: I { get }
  var meta: [String: String]? { get }

  // Connection concerns
  //////////////////////////////////////////////////////////////////////////

  func incomingConnections() -> Observable<(I, [String: Any]?, (Bool) -> ())>
  func connections() -> Observable<[I]>
  func nearbyPeers() -> Observable<[(I, [String: String]?)]>
  func startAdvertising()
  func stopAdvertising()
  func startBrowsing()
  func stopBrowsing()
  func connect(_ peer: I, context: [String: Any]?, timeout: TimeInterval)
  func disconnect()
  func connectionErrors() -> Observable<Error>

  // Data reception concerns
  //////////////////////////////////////////////////////////////////////////

  func receive() -> Observable<(I, Data)>
  func receive() -> Observable<(I, String, ResourceState)>
  func receive(_ other: I, streamName: String, runLoop: RunLoop, maxLength: Int) -> Observable<[UInt8]>

  // Data delivery concerns
  //////////////////////////////////////////////////////////////////////////

  func send(_ other: I, _ data: Data, _ mode: MCSessionSendDataMode) -> Observable<()>
  func send(_ other: I, name: String, url: URL, _ mode: MCSessionSendDataMode) -> Observable<Progress>
  func send(_ other: I, streamName: String, runLoop: RunLoop) -> Observable<([UInt8]) -> Void>

}
