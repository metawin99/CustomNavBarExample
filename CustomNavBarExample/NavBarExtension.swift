//
//  NavBarExtension.swift
//  CustomNavBarExample
//
//  Created by Soemsak on 16/5/2562 BE.
//  Copyright © 2562 Moohow. All rights reserved.
//

import UIKit

class NavBarExtension {
    
    func navTitleWithImageAndText(titleText: String, messageText: String,imageName: String) -> UIView {
        let titleView = UIView()
        let topText = NSLocalizedString(titleText, comment: "")
        let bottomText = NSLocalizedString(messageText, comment: "")
        let titleParameters = [NSAttributedString.Key.foregroundColor : UIColor.darkGray,
                               NSAttributedString.Key.font : UIFont.systemFont(ofSize: 16)]
        let subtitleParameters = [NSAttributedString.Key.foregroundColor : UIColor.lightGray,
                                  NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12)]
        let title:NSMutableAttributedString = NSMutableAttributedString(string: topText, attributes: titleParameters)
        let subtitle:NSAttributedString = NSAttributedString(string: bottomText, attributes: subtitleParameters)
        title.append(NSAttributedString(string: "\n"))
        title.append(subtitle)
        
        let size = title.size()
        let width = size.width
        //let height = navigationController?.navigationBar.frame.size.height
        //let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: height!))
        
        let titleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: 44))
        titleLabel.attributedText = title
        titleLabel.numberOfLines = 0
        titleLabel.center = titleView.center
        
        let image = UIImageView()
        image.image = UIImage(named: imageName)
        let imageAspect = image.image!.size.width / image.image!.size.height
        let imageX = titleLabel.frame.origin.x - titleLabel.frame.size.height * imageAspect
        let imageY = titleLabel.frame.origin.y
        let imageWidth = titleLabel.frame.size.height * imageAspect / 1.5
        let imageHeight = titleLabel.frame.size.height
        
        image.frame = CGRect(x: imageX, y: imageY, width: imageWidth, height: imageHeight)
        image.contentMode = UIView.ContentMode.scaleAspectFit
        
        titleView.addSubview(titleLabel)
        titleView.addSubview(image)
        titleView.sizeToFit()
        return titleView
    }
    
}
