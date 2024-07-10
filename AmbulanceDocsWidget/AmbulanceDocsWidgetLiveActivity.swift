//
//  AmbulanceDocsWidgetLiveActivity.swift
//  AmbulanceDocsWidget
//
//  Created by Artur Vladymcev on 27.06.24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct AmbulanceDocsWidgetAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct AmbulanceDocsWidgetLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: AmbulanceDocsWidgetAttributes.self) { context in
            // Lock screen/banner UI goes here
            VStack {
                Text("Hello \(context.state.emoji)")
            }
            .activityBackgroundTint(Color.cyan)
            .activitySystemActionForegroundColor(Color.black)

        } dynamicIsland: { context in
            DynamicIsland {
                // Expanded UI goes here.  Compose the expanded UI through
                // various regions, like leading/trailing/center/bottom
                DynamicIslandExpandedRegion(.leading) {
                    Text("Leading")
                }
                DynamicIslandExpandedRegion(.trailing) {
                    Text("Trailing")
                }
                DynamicIslandExpandedRegion(.bottom) {
                    Text("Bottom \(context.state.emoji)")
                    // more content
                }
            } compactLeading: {
                Text("L")
            } compactTrailing: {
                Text("T \(context.state.emoji)")
            } minimal: {
                Text(context.state.emoji)
            }
            .widgetURL(URL(string: "http://www.apple.com"))
            .keylineTint(Color.red)
        }
    }
}

extension AmbulanceDocsWidgetAttributes {
    fileprivate static var preview: AmbulanceDocsWidgetAttributes {
        AmbulanceDocsWidgetAttributes(name: "World")
    }
}

extension AmbulanceDocsWidgetAttributes.ContentState {
    fileprivate static var smiley: AmbulanceDocsWidgetAttributes.ContentState {
        AmbulanceDocsWidgetAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: AmbulanceDocsWidgetAttributes.ContentState {
         AmbulanceDocsWidgetAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: AmbulanceDocsWidgetAttributes.preview) {
   AmbulanceDocsWidgetLiveActivity()
} contentStates: {
    AmbulanceDocsWidgetAttributes.ContentState.smiley
    AmbulanceDocsWidgetAttributes.ContentState.starEyes
}
