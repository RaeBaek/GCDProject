//
//  ViewController.swift
//  GCDProject
//
//  Created by 백래훈 on 2023/02/27.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: - Properties
    //MARK: @IBOutlets
    @IBOutlet weak var firstImageView: UIImageView!
    @IBOutlet weak var secondImageView: UIImageView!
    @IBOutlet weak var thirdImageView: UIImageView!
    @IBOutlet weak var fourthImageView: UIImageView!
    @IBOutlet weak var fifthImageView: UIImageView!
    
    @IBOutlet weak var firstProgressView: UIProgressView!
    @IBOutlet weak var secondProgressView: UIProgressView!
    @IBOutlet weak var thirdProgressView: UIProgressView!
    @IBOutlet weak var fourthProgressView: UIProgressView!
    @IBOutlet weak var fifthProgressView: UIProgressView!
    
    @IBOutlet weak var firstLoadButton: UIButton!
    @IBOutlet weak var secondLoadButton: UIButton!
    @IBOutlet weak var thirdLoadButton: UIButton!
    @IBOutlet weak var fourthLoadButton: UIButton!
    @IBOutlet weak var fifthLoadButton: UIButton!
    
    //MARK: imageInfo
    let imageInfo: ImageInfo = ImageInfo()
    
    //MARK: - Functions
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: @IBActions
    @IBAction func firstImageDownloadButtonDidTap(_ sender: UIButton) {
        if self.firstImageView.image == UIImage(systemName: "photo") {
            //image download
            guard let imageURL: URL = URL(string: imageInfo.imageURLArray[0]) else { return }
            
            OperationQueue().addOperation {
                do {
                    let imageData: Data = try Data.init(contentsOf: imageURL)
                    guard let image: UIImage = UIImage(data: imageData) else { return }
                    
                    OperationQueue.main.addOperation {
                        self.firstImageView.image = image
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        } else {
            self.firstImageView.image = UIImage(systemName: "photo")
        }
        
    }
    
    @IBAction func secondImageDownloadButtonDidTap(_ sender: UIButton) {
        if self.secondImageView.image == UIImage(systemName: "photo") {
            //image download
            guard let imageURL: URL = URL(string: imageInfo.imageURLArray[1]) else { return }
            
            OperationQueue().addOperation {
                do {
                    let imageData: Data = try Data.init(contentsOf: imageURL)
                    guard let image: UIImage = UIImage(data: imageData) else { return }
                    
                    OperationQueue.main.addOperation {
                        self.secondImageView.image = image
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        } else {
            self.secondImageView.image = UIImage(systemName: "photo")
        }
    }
    
    @IBAction func thirdImageDownloadButtonDidTap(_ sender: UIButton) {
        if self.thirdImageView.image == UIImage(systemName: "photo") {
            //image download
            guard let imageURL: URL = URL(string: imageInfo.imageURLArray[2]) else { return }
            
            OperationQueue().addOperation {
                do {
                    let imageData: Data = try Data.init(contentsOf: imageURL)
                    guard let image: UIImage = UIImage(data: imageData) else { return }
                    
                    OperationQueue.main.addOperation {
                        self.thirdImageView.image = image
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        } else {
            self.thirdImageView.image = UIImage(systemName: "photo")
        }
    }
    
    @IBAction func fourthImageDownloadButtonDidTap(_ sender: UIButton) {
        if self.fourthImageView.image == UIImage(systemName: "photo") {
            //image download
            guard let imageURL: URL = URL(string: imageInfo.imageURLArray[3]) else { return }
            
            OperationQueue().addOperation {
                do {
                    let imageData: Data = try Data.init(contentsOf: imageURL)
                    guard let image: UIImage = UIImage(data: imageData) else { return }
                    
                    OperationQueue.main.addOperation {
                        self.fourthImageView.image = image
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        } else {
            self.fourthImageView.image = UIImage(systemName: "photo")
        }
    }
    
    @IBAction func fifthImageDownloadButtonDidTap(_ sender: UIButton) {
        if self.fifthImageView.image == UIImage(systemName: "photo") {
            //image download
            guard let imageURL: URL = URL(string: imageInfo.imageURLArray[4]) else { return }
            
            OperationQueue().addOperation {
                do {
                    let imageData: Data = try Data.init(contentsOf: imageURL)
                    guard let image: UIImage = UIImage(data: imageData) else { return }
                    
                    OperationQueue.main.addOperation {
                        self.fifthImageView.image = image
                    }
                } catch {
                    print(error.localizedDescription)
                }
            }
        } else {
            self.fifthImageView.image = UIImage(systemName: "photo")
        }
    }
    
    @IBAction func allImageDownloadButtonDidTap(_ sender: UIButton) {
        self.firstImageDownloadButtonDidTap(firstLoadButton)
        self.secondImageDownloadButtonDidTap(secondLoadButton)
        self.thirdImageDownloadButtonDidTap(thirdLoadButton)
        self.fourthImageDownloadButtonDidTap(fourthLoadButton)
        self.fifthImageDownloadButtonDidTap(fifthLoadButton)
    }
}
