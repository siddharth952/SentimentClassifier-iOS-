//
//  StringExtension.swift
//  SentimentClassifier
//
//  Created by Siddharth Sen on 29/09/19.
//  Copyright © 2019 halfpolygon. All rights reserved.
//

import UIKit


extension String {
    func emojiToImage() -> UIImage? {
        let size = CGSize(width: 60, height: 70)
        UIGraphicsBeginImageContextWithOptions(size, false, 3.0)
        UIColor.white.set()
        let rect = CGRect(origin: CGPoint(), size: size)
        UIRectFill(rect)
        (self as NSString).draw(in: rect, withAttributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 30)])
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
