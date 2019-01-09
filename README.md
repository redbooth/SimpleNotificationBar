# RedboothNotificationBar

[![CI Status](https://img.shields.io/circleci/project/github/Redbooth/SimpleNotificationBar.svg)](https://circleci.com/gh/redbooth/SimpleNotificationBar)
[![Version](https://img.shields.io/cocoapods/v/SimpleNotificationBar.svg?style=flat)](https://cocoapods.org/pods/SimpleNotificationBar)
[![License](https://img.shields.io/cocoapods/l/SimpleNotificationBar.svg?style=flat)](https://cocoapods.org/pods/SimpleNotificationBar)
[![Platform](https://img.shields.io/cocoapods/p/SimpleNotificationBar.svg?style=flat)](https://cocoapods.org/pods/SimpleNotificationBar)

![alt text](https://github.com/redbooth/SimpleNotificationBar/blob/master/ezgif.com-resize.gif?raw=true)

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
