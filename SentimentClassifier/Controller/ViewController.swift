//
//  ViewController.swift
//  SentimentClassifier
//
//  Created by Siddharth Sen on 29/09/19.
//  Copyright © 2019 halfpolygon. All rights reserved.
//

import UIKit
import NaturalLanguage

class ViewController: UIViewController {

     //MARK: Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textField: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // imageView.image = "😎".emojiToImage()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func validateButtonTapped(_ sender: Any){
        do {
            print("Tapped")
            
            let sentimentPredictor = try NLModel(mlModel: SentimentClassifier().model)
            
            print(sentimentPredictor)
            let result = sentimentPredictor.predictedLabel(for: textField.text)
            
            if result == "positive"{
                imageView.image = "👍".emojiToImage()
            }else if result == "negative"{
                imageView.image = "👎".emojiToImage()
            }
 
        }catch{
            print("Error!!")
        }
        
        
    }


}



