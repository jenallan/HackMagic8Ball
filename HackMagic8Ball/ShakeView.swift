//
//  ShakeView.swift
//  HackMagic8Ball
//
//  Created by Jennifer Allan on 2/9/23.
//

import SwiftUI

struct ShakeView: View{
    @State public var viewChange: Bool = false
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Gradient(colors: [.indigo, .purple]))
                .ignoresSafeArea()
            VStack{
                Text("SHAKE to enter").font(.custom("Papyrus", size: 36))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)//.offset(x: 0, y:-220)
                Image("8BallCentered")
                        .resizable()
                        .scaledToFit()
                Text("the FUTURE").font(.custom("Papyrus", size: 30))
                    .foregroundColor(.white)//.offset(x: 0, y:220)
                
            }
        
        }
            .onReceive(NotificationCenter.default.publisher(for: .deviceDidShakeNotification)) { _ in
                self.viewChange = true
                
            }
        NavigationLink(destination: ResponsePage(), isActive: $viewChange) { EmptyView() }
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

