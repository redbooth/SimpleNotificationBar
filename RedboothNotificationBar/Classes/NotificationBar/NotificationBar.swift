import SwiftMessages

public protocol NotificationBar {
    func showInfoBanner(withMessage message: String, autoDismiss: Bool, style: UIStatusBarStyle)
    func showErrorBanner(withMessage message: String, autoDismiss: Bool)
    func showSuccessBanner(withMessage message: String, autoDismiss: Bool)
    func dismissBanner()
}

public enum StatusBarBannerStyle {
    case success
    case error
    case info
    case warning
}

extension NotificationBar {

    public func showInfoBanner(
        withMessage message: String,
        autoDismiss: Bool = true,
        style: UIStatusBarStyle = .lightContent
    ) {
        SwiftMessages.show(
            config: swiftMessagesConfig(autoDismiss: autoDismiss, style: .info),
            view: notificationBanner(withMessage: message, style: .info, textStyle: style)
        )
    }

    public func showErrorBanner(withMessage message: String, autoDismiss: Bool = true) {
        SwiftMessages.show(
            config: swiftMessagesConfig(autoDismiss: autoDismiss, style: .error),
            view: notificationBanner(withMessage: message, style: .error, textStyle: .lightContent)
        )
    }

    public func showSuccessBanner(withMessage message: String, autoDismiss: Bool = true) {
        SwiftMessages.show(
            config: swiftMessagesConfig(autoDismiss: autoDismiss, style: .success),
            view: notificationBanner(withMessage: message, style: .success, textStyle: .lightContent)
        )
    }

    public func showBannerUnderNavBar(
        withMessage message: String,
        backgroundColor: StatusBarBannerStyle = .info,
        foregroundStyle: UIStatusBarStyle = .default
    ) {
        var config = SwiftMessages.defaultConfig
        config.shouldAutorotate = true
        config.duration = .forever
        config.presentationStyle = .top
        config.ignoreDuplicates = false
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.bodyLabel?.text = message
        view.configureTheme(
            backgroundColor: getBackgroundColor(forStyle: backgroundColor),
            foregroundColor: getTextColor(forStyle: foregroundStyle),
            iconImage: nil,
            iconText: nil
        )
        SwiftMessages.show(config: config, view: view)
    }

    public func dismissBanner() {
        SwiftMessages.hide()
    }

    fileprivate func notificationBanner(
        withMessage message: String,
        style: StatusBarBannerStyle,
        textStyle: UIStatusBarStyle
    ) -> MessageView {
        let view = MessageView.viewFromNib(layout: .statusLine)
        view.bodyLabel?.text = message
        view.configureTheme(
            backgroundColor: getBackgroundColor(forStyle: style),
            foregroundColor: getTextColor(forStyle: textStyle),
            iconImage: nil,
            iconText: nil
        )
        return view
    }

    fileprivate func swiftMessagesConfig(
        autoDismiss: Bool = true,
        style: StatusBarBannerStyle
    ) -> SwiftMessages.Config {
        var config = SwiftMessages.defaultConfig
        config.shouldAutorotate = true
        config.duration = autoDismiss ? .automatic : .forever
        config.presentationContext = .window(
            windowLevel: style == .info ? UIWindow.Level.normal : UIWindow.Level.statusBar
        )
        config.presentationStyle = .top
        config.preferredStatusBarStyle = .none
        config.ignoreDuplicates = false
        return config
    }

    fileprivate func getBackgroundColor(forStyle style: StatusBarBannerStyle) -> UIColor {
        switch style {
        case .info: return .clear
        case .error: return .red
        case .success: return .green
        case .warning: return .yellow
        }
    }

    fileprivate func getTextColor(forStyle style: UIStatusBarStyle) -> UIColor {
        switch style {
        case .default: return UIColor.black
        case .lightContent: return UIColor.white
        case .blackOpaque: return UIColor.white
        }
    }
}
