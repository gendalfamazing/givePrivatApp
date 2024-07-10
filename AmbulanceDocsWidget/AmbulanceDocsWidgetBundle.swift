//
//  AmbulanceDocsWidgetBundle.swift
//  AmbulanceDocsWidget
//
//  Created by Artur Vladymcev on 27.06.24.
//

import WidgetKit
import SwiftUI

@main
struct AmbulanceDocsWidgetBundle: WidgetBundle {
    var body: some Widget {
        AmbulanceDocsWidget()
        AmbulanceDocsWidgetLiveActivity()
    }
}
