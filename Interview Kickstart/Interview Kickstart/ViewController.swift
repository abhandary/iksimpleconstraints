//
//  ViewController.swift
//  Interview Kickstart
//
//  Created by Akshay Bhandary on 5/5/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var parentView: UIView!
    @IBOutlet var childView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        parentView.translatesAutoresizingMaskIntoConstraints = false
        childView.translatesAutoresizingMaskIntoConstraints = false
        
        parentView.backgroundColor = .red
        childView.backgroundColor = .gray
        parentView.frame
            = CGRect(origin: CGPoint(x: 0, y:0),
                     size: CGSize(width: 300, height:300))
        
        NSLayoutConstraint.activate(staticConstraints())
    }

    private func staticConstraints() -> [NSLayoutConstraint] {
        var constraints: [NSLayoutConstraint] = []
        
        // parent constraints
        constraints.append(contentsOf: [
            parentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            parentView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            parentView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            parentView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        // child constraints
        constraints.append(contentsOf:[
            childView.topAnchor.constraint(equalTo: parentView.safeAreaLayoutGuide.topAnchor, constant: 20.0),
            childView.leadingAnchor.constraint(equalTo: parentView.safeAreaLayoutGuide.leadingAnchor, constant: 20.0),
            // childView.widthAnchor.constraint(equalToConstant: 200),
            childView.trailingAnchor.constraint(equalTo: parentView.safeAreaLayoutGuide.trailingAnchor, constant: -20.0),
            childView.bottomAnchor.constraint(equalTo: parentView.safeAreaLayoutGuide.bottomAnchor, constant: -30.0)
        ])
        
        return constraints
    }

}

