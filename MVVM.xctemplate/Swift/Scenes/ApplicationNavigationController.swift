//
//  ApplicationNavigationController.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  ___COPYRIGHT___
//

import UIKit

class ApplicationNavigationController: UINavigationController {

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)

        configAppearance()
    }

    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)

        configAppearance()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        configAppearance()
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        UIApplication.shared.statusBarStyle = .lightContent
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    private func configAppearance() {
        // Appearance
        navigationBar.barTintColor = UIColor(hex: 0x4688F1)
        navigationBar.tintColor = UIColor.white

        // Localized
        let font = UIFont.systemFont(ofSize: 14)
        navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white, NSAttributedStringKey.font: font]

        navigationBar.isTranslucent = false
    }
}
