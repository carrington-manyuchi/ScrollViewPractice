//  ***********
//  MainViewController.swift
//  ScrollViewProg
//  Created by DA MAC M1 157 on 2023/07/11.
//  ***********

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
        
        for x in 1...6 {
            let iv = UIImageView()
            iv.contentMode = .scaleAspectFill
            iv.image = UIImage(named: x.description)
            imageViews.append(iv)
        }
        return imageViews
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViews()
        configureConstraints()
        
    }
    
    private func configureViews() {
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.addSubview(imageViews[0])
        contentView.addSubview(imageViews[1])
        contentView.addSubview(imageViews[2])
        contentView.addSubview(imageViews[3])
        contentView.addSubview(imageViews[4])
        contentView.addSubview(imageViews[5])
        
        imageViews[0].translatesAutoresizingMaskIntoConstraints = false
        imageViews[1].translatesAutoresizingMaskIntoConstraints = false
        imageViews[2].translatesAutoresizingMaskIntoConstraints = false
        imageViews[3].translatesAutoresizingMaskIntoConstraints = false
        imageViews[4].translatesAutoresizingMaskIntoConstraints = false
        imageViews[5].translatesAutoresizingMaskIntoConstraints = false
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
        
        let imageViewsConstraints = [
            
            imageViews[0].topAnchor.constraint(equalTo: contentView.topAnchor),
            imageViews[0].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[0].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[0].heightAnchor.constraint(equalToConstant: 300),
            imageViews[0].widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            
            imageViews[1].topAnchor.constraint(equalTo: imageViews[0].bottomAnchor),
            imageViews[1].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[1].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[1].heightAnchor.constraint(equalToConstant: 300),
            imageViews[1].widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            imageViews[2].topAnchor.constraint(equalTo: imageViews[1].bottomAnchor),
            imageViews[2].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[2].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[2].heightAnchor.constraint(equalToConstant: 300),
            imageViews[2].widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            imageViews[3].topAnchor.constraint(equalTo: imageViews[2].bottomAnchor),
            imageViews[3].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[3].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[3].heightAnchor.constraint(equalToConstant: 300),
            imageViews[3].widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            imageViews[4].topAnchor.constraint(equalTo: imageViews[3].bottomAnchor),
            imageViews[4].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[4].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[4].heightAnchor.constraint(equalToConstant: 300),
            imageViews[4].widthAnchor.constraint(equalTo: contentView.widthAnchor),
            
            imageViews[5].topAnchor.constraint(equalTo: imageViews[4].bottomAnchor),
            imageViews[5].leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViews[5].trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViews[5].heightAnchor.constraint(equalToConstant: 300),
            imageViews[5].widthAnchor.constraint(equalTo: contentView.widthAnchor)
        ]
        
        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(contentViewConstraints)
        NSLayoutConstraint.activate(imageViewsConstraints)
        
    }

}
