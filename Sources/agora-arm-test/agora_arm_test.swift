import AgoraRtcKit

public class agora_arm_test {
  private var agoraKit: AgoraRtcEngineKit?
  private(set) var isInitialised = false

  public init() {
    agoraKit = AgoraRtcEngineKit.sharedEngine(withAppId: "test", delegate: nil)
    isInitialised = true
  }
}
