//
//  LockOrientation.swift
//  8button
//
//  Created by Artur Vladymcev on 3.12.23.
//



import SwiftUI
import UIKit

class ScreenOrientationManager: ObservableObject {
    @Published var orientation: UIInterfaceOrientationMask = .portrait
}





struct ScreenOrientationLock: View {
    @EnvironmentObject var orientationManager: ScreenOrientationManager

    var body: some View {
        EmptyView()
            .onAppear {
                if let viewController = topViewController() {
                    viewController.view.window?.windowScene?.interfaceOrientationMask = orientationManager.orientation
                    UIViewController.attemptRotationToDeviceOrientation()
                }
            }
            .onChange(of: orientationManager.orientation) { _ in
                if let viewController = topViewController() {
                    viewController.view.window?.windowScene?.interfaceOrientationMask = orientationManager.orientation
                    UIViewController.attemptRotationToDeviceOrientation()
                }
            }
    }

    private func topViewController() -> UIViewController? {
        guard var topController = UIApplication.shared.windows.first?.rootViewController else {
            return nil
        }
        while let presentedViewController = topController.presentedViewController {
            topController = presentedViewController
        }
        return topController
    }
}
