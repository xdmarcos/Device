//
//  Haptic.swift
//  Device
//
//  Created by xdmgzdev on 14/04/2021.
//

import UIKit

public struct Haptic {
  public enum NotificationFeedback {
    case success, info, failure
  }

  public enum ImpactFeedback {
    case light, medium, heavy
  }

  public static func performNotifiationFeedback(mode: NotificationFeedback) {
    let generator = UINotificationFeedbackGenerator()

    if mode == .success {
      generator.notificationOccurred(.success)
    } else if mode == .failure {
      generator.notificationOccurred(.error)
    } else {
      generator.notificationOccurred(.warning)
    }
  }

  public static func performSelectionFeedback() {
    let generator = UISelectionFeedbackGenerator()
    generator.selectionChanged()
  }

  public static func performImpactFeedback(mode: ImpactFeedback) {
    var generator: UIImpactFeedbackGenerator
    if mode == .light {
      generator = UIImpactFeedbackGenerator(style: .light)
    } else if mode == .medium {
      generator = UIImpactFeedbackGenerator(style: .medium)
    } else {
      generator = UIImpactFeedbackGenerator(style: .heavy)
    }
    generator.prepare()
    generator.impactOccurred()
  }
}
