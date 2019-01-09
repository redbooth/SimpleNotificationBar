//
//  ViewController.swift
//  RedboothNotificationBar
//
//  Created by twof on 12/30/2018.
//  Copyright (c) 2018 twof. All rights reserved.
//

import UIKit
import SimpleNotificationBar

class ViewController: UIViewController, NotificationBar {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        self.showSuccessBanner(withMessage: "You did it!")
        self.showErrorBanner(withMessage: "Uh Oh!")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

