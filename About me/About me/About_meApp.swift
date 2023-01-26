//
//  About_meApp.swift
//  About me
//
//  Created by leena althunayan on 05/07/1444 AH.
//

import SwiftUI

@main
struct About_meApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: About_meDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
