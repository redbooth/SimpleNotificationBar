# RedboothNotificationBar

[![CI Status](https://img.shields.io/travis/twof/RedboothNotificationBar.svg?style=flat)](https://travis-ci.org/twof/RedboothNotificationBar)
[![Version](https://img.shields.io/cocoapods/v/RedboothNotificationBar.svg?style=flat)](https://cocoapods.org/pods/RedboothNotificationBar)
[![License](https://img.shields.io/cocoapods/l/RedboothNotificationBar.svg?style=flat)](https://cocoapods.org/pods/RedboothNotificationBar)
[![Platform](https://img.shields.io/cocoapods/p/RedboothNotificationBar.svg?style=flat)](https://cocoapods.org/pods/RedboothNotificationBar)

## Usage

Usage is simple, as the name implies. Simply conform your `UIViewController` to `NotificationBar`
```swift
import SimpleNotificationBar

class ViewController: UIViewController, NotificationBar {
  ...
}
```

And use the methods that it provides

```swift
self.showSuccessBanner(withMessage: "You did it!")
self.showErrorBanner(withMessage: "Uh Oh!")

self.dismissBanner()
```

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

RedboothNotificationBar is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'RedboothNotificationBar'
```
