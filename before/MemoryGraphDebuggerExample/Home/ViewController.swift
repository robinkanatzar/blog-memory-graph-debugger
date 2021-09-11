//
//  ViewController.swift
//  MemoryGraphDebuggerExample
//
//  Created by Robin Kanatzar on 9/11/21.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginStatusLabel: UILabel!

    // MARK: - Lifecycle, setup
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Memory Leaks"
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // MARK: - Actions
    @IBAction func didTapLogin(_ sender: Any) {
        // Before, with leak
        let loginViewController = LoginViewController()
        loginViewController.didLoginCallback = { email in
            self.loginStatusLabel.text = "Connected with email: \(email)"
            loginViewController.dismiss(animated: true, completion: nil)
        }
        present(loginViewController, animated: true, completion: nil)

        // After, without leak
//        let loginViewController = LoginViewController()
//        loginViewController.didLoginCallback = { [weak loginViewController] email in
//            self.loginStatusLabel.text = "Connected with email: \(email)"
//            loginViewController?.dismiss(animated: true, completion: {
//                self.loginStatusLabel.text = "Connected with email: \(email)"
//            })
//        }
//        present(loginViewController, animated: true, completion: nil)
    }
}

