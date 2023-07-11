//
//  MainViewController.swift
//  ScrollViewProg
//
//  Created by DA MAC M1 157 on 2023/07/11.
//

import UIKit

class MainViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let sv = UIScrollView()
        sv.translatesAutoresizingMaskIntoConstraints = false
        sv.backgroundColor = .systemRed
        return sv
    }()
    
    private let contentView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = .systemPurple
        return v
    }()
    
    private let imageViews: [UIImageView] = {
        var imageViews: [UIImageView] = []
        
        for x in 1...5 {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFill
            iv.image = UIImage(named: x.description)
            imageViews.append(iv)
        }
        return imageViews
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        configureConstraints()
        
    }
    
    private func configureConstraints() {
        let scrollViewConstraints = [
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        
//        let heightConstant = contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 2)
//        //heightConstant.isActive = true
//        heightConstant.priority = UILayoutPriority(50)
        
        let contentViewConstraints = [
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            //heightConstant,
            contentView.heightAnchor.constraint(equalTo: scrollView.heightAnchor, multiplier: 2)
        ]
        
        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(contentViewConstraints)
    }

}
