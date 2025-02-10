import SwiftUI
import AppKit

final class WindowManager {

    // MARK: - Properties
    static let shared = WindowManager()
    private var windows: [NSWindow] = []

    /// Adding some new window at manager
    func addWindow(_ window: NSWindow) {
        if !windows.contains(where: { $0 == window }) {
            windows.append(window)
        }
    }

    /// Update a color at window associetaed a especific view
    func setWindowColor(_ color: NSColor, for view: NSView) {
        if let window = view.window {
            window.backgroundColor = color
        }
    }

    /// function global to update a color the actual window
    static func setWindowBackground(color: Color) {
        if let keyWindow = NSApp.keyWindow {
            keyWindow.backgroundColor = NSColor(color)
        }
    }
}
