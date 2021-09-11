//
//  LoginViewController.swift
//  MemoryGraphDebuggerExample
//
//  Created by Robin Kanatzar on 9/11/21.
//

import Foundation
import UIKit

final class LoginViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!

    var didLoginCallback: ((String) -> Void)?

    // MARK: - Lifecycle
    init() {
        super.init(nibName: "LoginViewController", bundle: nil)
        print("\(Self.self): init")
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    deinit {
        print("\(Self.self): deinit")
    }

    // MARK: - Actions
    @IBAction func didTapLogin(_ sender: Any) {
        didLoginCallback?(emailTextField.text ?? "-")
    }
}
