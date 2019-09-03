//
//  AppDelegate.swift
//  SearchControllerExample
//
//  Created by Plunien, Johannes on 03.09.19.
//  Copyright © 2019 eBay Kleinanzeigen. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private let searchController: UISearchController

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        searchController = UISearchController(searchResultsController: nil)
        searchController.hidesNavigationBarDuringPresentation = false
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Test", style: .plain, target: self, action: #selector(cancelAction(_:)))
        navigationItem.searchController = searchController
    }

    @objc private func cancelAction(_ sender: UIBarButtonItem) {
        let alertController = UIAlertController(title: "Test", message: "👍", preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }

    @available(*, unavailable) required init?(coder aDecoder: NSCoder) { fatalError() }

}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    let window: UIWindow? = UIWindow(frame: UIScreen.main.bounds)

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.rootViewController = UINavigationController(rootViewController: ViewController())
        window?.makeKeyAndVisible()
        return true
    }

}
