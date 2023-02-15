//
//  ShakeView.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 2/9/23.
//

import SwiftUI

struct ShakeView: View{
    @State private var message = "Unshaken"
    var body: some View {
        Text(message)
            .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification)) { _ in
                self.message = "Shaken"
    
        }
    }
}

extension NSNotification.Name {
    public static let deviceDidShakeNotification = NSNotification.Name("MyDeviceDidShakeNotification")
}

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        super.motionEnded(motion, with: event)
        NotificationCenter.default.post(name: .deviceDidShakeNotification, object: event)
    }
}


struct ShakeView_Previews: PreviewProvider {
    static var previews: some View {
        ShakeView()
    }
}

//
//struct ShakeView: View{
//
////    var body: some View {
////        Text("Shake me!")
////            .onShake {
////               print("device shaken")
//            }
//    }
//}
//// The notification we'll send when a shake gesture happens.
//extension UIDevice {
//    static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
//}
//
////  Override the default behavior of shake gestures to send our notification instead.
//extension UIWindow {
//     open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
//        if motion == .motionShake {
//            NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
//        }
//     }
//}
//
//// A view modifier that detects shaking and calls a function of our choosing.
//struct DeviceShakeViewModifier: ViewModifier {
//    let action: () -> Void
//
//    func body(content: Content) -> some View {
//        content
//            .onAppear()
//            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
//                action()
//            }
//    }
//}
//
//// A View extension to make the modifier easier to use.
//extension View {
//    func onShake(perform action: @escaping () -> Void) -> some View {
//        self.modifier(DeviceShakeViewModifier(action: action))
//    }
//}

//
//struct ShakeView_Previews: PreviewProvider {
//    static var previews: some View {
//        ShakeView()
//    }
//}
