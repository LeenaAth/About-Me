//
//  ContentView.swift
//  About me
//
//  Created by leena althunayan on 05/07/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @Binding var document: About_meDocument

    var body: some View {
        TextEditor(text: $document.text)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: .constant(About_meDocument()))
    }
}
import PackageDescription
import AppleProductTypes

let package = Package(
    name: "About me",
    platforms: [
        .iOS("14.6")
    ],
    products: [
        .iOSApplication(
            name: "About Me",
            targets: ["App"],
            displayVersion: "1.0",
            bundleVersion: "1",
            appIcon: .asset("AppIcon"),
            accentColor: .presetColor(.gray),
            supportedDeviceFamilies: [
                .pad,
                .phone
            ],
            supportedInterfaceOrientations: [
                .portrait,
                .landscapeRight,
                .landscapeLeft,
                .portraitUpsideDown(.when(deviceFamilies: [.pad]))
            ]
        )
    ],
    targets: [
        .executableTarget(
            name: "App",
            path: "App"
        )
    ]
)
