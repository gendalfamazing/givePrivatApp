//
//  CalendarLiveActivity.swift
//  Calendar
//
//  Created by Artur Vladymcev on 26.06.24.
//

import ActivityKit
import WidgetKit
import SwiftUI

struct CalendarAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        // Dynamic stateful properties about your activity go here!
        var emoji: String
    }

    // Fixed non-changing properties about your activity go here!
    var name: String
}

struct CalendarLiveActivity: Widget {
    var body: some WidgetConfiguration {
        ActivityConfiguration(for: CalendarAttributes.self) { context in
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

extension CalendarAttributes {
    fileprivate static var preview: CalendarAttributes {
        CalendarAttributes(name: "World")
    }
}

extension CalendarAttributes.ContentState {
    fileprivate static var smiley: CalendarAttributes.ContentState {
        CalendarAttributes.ContentState(emoji: "😀")
     }
     
     fileprivate static var starEyes: CalendarAttributes.ContentState {
         CalendarAttributes.ContentState(emoji: "🤩")
     }
}

#Preview("Notification", as: .content, using: CalendarAttributes.preview) {
   CalendarLiveActivity()
} contentStates: {
    CalendarAttributes.ContentState.smiley
    CalendarAttributes.ContentState.starEyes
}
