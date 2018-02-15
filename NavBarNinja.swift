//
//  NavigationBarExtension.swift
//  NavigationBarninja
//
//  Created by Alfredo Uzumaki on 11/20/1396 AP.
//  Copyright © 1396 AP Alfredo Uzumaki. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func navBarNinja(color:UIColor) {
        self.navigationController?.navigationBar.tintColor = color
        self.navigationController?.navigationBar.barTintColor = color
        self.navigationController?.navigationBar.backgroundColor = color
    }
    
    func navbarNinja(backgroundImage:UIImage) {
        setNavigationBarImage(backgroundImage)
    }
    
    func navBarNinja(titleColor: UIColor) {
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: titleColor]
    }
    
    func navBarNinja(showNavBarShadow: Bool) {
        if showNavBarShadow {
            showShadow()
        } else {
            hideShadow()
        }
    }
    
    func navBarNinja(rightButton: UIButton, icon: UIImage, textLabel:String = "") {
        let maskView = UIImageView()
        maskView.image = #imageLiteral(resourceName: "mask") // your png mask image
        let iconSize = self.navigationController!.navigationBar.layer.frame.height - 10
        let imageView = UIImageView(frame: CGRect(x: 55, y: 0, width: iconSize, height: iconSize))
        imageView.image = icon
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 50, height: iconSize))
        label.text = textLabel
        label.textAlignment = .right
        let buttonView = UIView(frame: CGRect(x: 55, y: 0, width: 90, height: iconSize))
        maskView.frame = imageView.bounds
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.mask = maskView
        rightButton.frame = buttonView.frame
        buttonView.addSubview(rightButton)
        buttonView.addSubview(imageView)
        buttonView.addSubview(label)
        let barButton = UIBarButtonItem.init(customView: buttonView)
        self.navigationItem.rightBarButtonItem = barButton
    }
    
    func navBarNinja(leftButton: UIButton, icon: UIImage, textLabel:String = "") {
        let maskView = UIImageView()
        maskView.image = #imageLiteral(resourceName: "mask") // your png mask image
        let iconSize = self.navigationController!.navigationBar.layer.frame.height - 10
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: iconSize, height: iconSize))
        imageView.image = icon
        let label = UILabel(frame: CGRect(x: iconSize + 5, y: 0, width: 50, height: iconSize))
        label.text = textLabel
        let buttonView = UIView(frame: CGRect(x: 0, y: 0, width: 90, height: iconSize))
        maskView.frame = imageView.bounds
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleToFill
        imageView.mask = maskView
        leftButton.frame = buttonView.frame
        buttonView.addSubview(leftButton)
        buttonView.addSubview(imageView)
        buttonView.addSubview(label)
        let barButton = UIBarButtonItem.init(customView: buttonView)
        self.navigationItem.leftBarButtonItem = barButton
    }
    
    func navBarNinja(romveRightNavbarButton: Bool) {
        var rightNavBar: UIBarButtonItem!
        rightNavBar = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        self.navigationItem.rightBarButtonItem = rightNavBar
    }
    
    func navBarNinja(romveLeftNavbarButton: Bool) {
        var leftNavBar: UIBarButtonItem!
        leftNavBar = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        self.navigationItem.leftBarButtonItem = leftNavBar
    }
    
    func navBarNinja(hideNavigationBar: Bool) {
        if hideNavigationBar {
            self.navigationController?.isNavigationBarHidden = true
        } else {
            self.navigationController?.isNavigationBarHidden = false
        }
    }
    
    // mini functions --------------------------------------------------------------------
    func setNavigationBarImage(_ image: UIImage) {
        self.navigationController?.navigationBar.setBackgroundImage(image, for: .default)
        self.navigationController?.navigationBar.isTranslucent = false
        navBarNinja(statusbarcolor: UIColor.clear)
        hideShadow()
    }
    
    func transparentNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.isTranslucent = true
    }

    func hideShadow() {
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    func showShadow() {
        self.navigationController?.navigationBar.layer.masksToBounds = false
        self.navigationController?.navigationBar.layer.shadowColor = UIColor.lightGray.cgColor
        self.navigationController?.navigationBar.layer.shadowOpacity = 0.8
        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        self.navigationController?.navigationBar.layer.shadowRadius = 2
    }
    
    // statusbar setup -------------------------------------------------------------
    func navBarNinja(statusbarcolor: UIColor, whiteText:Bool = true) {
        let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView
        statusBar?.backgroundColor = statusbarcolor
        if whiteText {
            statusbarWhiteText()
        } else {
            statusbarBlackText()
        }
    }
    
    func statusbarBlackText() {
        self.navigationController?.navigationBar.barStyle = .default
    }
    
    func statusbarWhiteText() {
        self.navigationController?.navigationBar.barStyle = .blackTranslucent
    }
}

