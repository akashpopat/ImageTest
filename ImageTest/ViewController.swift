//
//  ViewController.swift
//  ImageTest
//
//  Created by Akash Popat on 11/08/18.
//  Copyright © 2018 Akash Popat. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let imgs: String = "https://i.imgur.com/BRBct3v.jpg,https://i.imgur.com/BRBct3v.jpg,https://i.imgur.com/BRBct3v.jpg,https://i.imgur.com/g6ZO7TN.jpg,https://i.imgur.com/zUWUo8U.jpg,https://i.imgur.com/VEE1rZd.jpg,https://i.imgur.com/g6ZO7TN.jpg,https://i.imgur.com/TpntJCb.jpg,https://i.imgur.com/g6ZO7TN.jpg,https://i.imgur.com/TpntJCb.jpg,https://i.imgur.com/g6ZO7TN.jpg,https://i.imgur.com/zUWUo8U.jpg,https://i.imgur.com/BRBct3v.jpg,https://i.pinimg.com/736x/37/76/e6/3776e6dce973f38f4c4b90939b13b9be--mens-navy-blazers-weddingideas.jpg,https://i.imgur.com/VEE1rZd.jpg,https://i.imgur.com/zUWUo8U.jpg,https://i.pinimg.com/736x/37/76/e6/3776e6dce973f38f4c4b90939b13b9be--mens-navy-blazers-weddingideas.jpg,https://i.pinimg.com/736x/37/76/e6/3776e6dce973f38f4c4b90939b13b9be--mens-navy-blazers-weddingideas.jpg,https://i.imgur.com/zUWUo8U.jpg,https://i.imgur.com/9dE0giU.jpg,http://lc.seenit.in/batch_images/image_1522758625.jpg,http://lc.seenit.in/batch_images/image_1522843343.jpg,http://lc.seenit.in/batch_images/image_1522984865.jpg,http://lc.seenit.in/batch_images/image_1522987906.jpg,http://lc.seenit.in/batch_images/image_1522992472.jpg,http://lc.seenit.in/batch_images/image_1523008986.jpg,http://lc.seenit.in/batch_images/image_1523090620.jpg,http://lc.seenit.in/batch_images/image_1523209458.jpg,http://lc.seenit.in/batch_images/image_1523241421.jpg,http://lc.seenit.in/batch_images/image_1523245597.jpg,http://lc.seenit.in/batch_images/image_1523245851.jpg,http://lc.seenit.in/batch_images/image_1523246299.jpg,http://lc.seenit.in/batch_images/image_1523247181.jpg,http://lc.seenit.in/batch_images/image_1523247434.jpg,http://lc.seenit.in/batch_images/image_1523258059.jpg,http://lc.seenit.in/batch_images/image_1523258433.jpg,http://lc.seenit.in/batch_images/image_1523259032.jpg,http://lc.seenit.in/batch_images/image_1523259353.jpg,http://lc.seenit.in/batch_images/image_1523259638.jpg,http://lc.seenit.in/batch_images/image_1523259913.jpg,http://lc.seenit.in/batch_images/image_1523261535.jpg,http://lc.seenit.in/batch_images/image_1523273863.jpg,http://lc.seenit.in/batch_images/image_1523274394.jpg,http://lc.seenit.in/batch_images/image_1523278374.jpg,http://lc.seenit.in/batch_images/image_1523278635.jpg,http://lc.seenit.in/batch_images/image_1523278867.jpg,http://lc.seenit.in/batch_images/image_1523279105.jpg,http://lc.seenit.in/batch_images/image_1523279261.jpg,http://lc.seenit.in/batch_images/image_1523281835.jpg,http://lc.seenit.in/batch_images/image_1523282036.jpg,http://lc.seenit.in/batch_images/image_1523282196.jpg,http://lc.seenit.in/batch_images/image_1523286186.jpg,http://lc.seenit.in/batch_images/image_1523289754.jpg,http://lc.seenit.in/batch_images/image_1523341982.jpg,http://lc.seenit.in/batch_images/image_1526505029.jpg,http://lc.seenit.in/batch_images/image_1523429677.jpg,http://lc.seenit.in/batch_images/image_1523443457.jpg,http://lc.seenit.in/batch_images/image_1523446742.jpg,http://lc.seenit.in/batch_images/image_1523504632.jpg,http://lc.seenit.in/batch_images/image_1523505361.jpg,http://lc.seenit.in/batch_images/image_1523507306.jpg,http://lc.seenit.in/batch_images/image_1523602703.jpg,http://lc.seenit.in/batch_images/image_1523860686.jpg,http://lc.seenit.in/batch_images/image_1523863591.jpg,http://lc.seenit.in/batch_images/image_1523863739.jpg,http://lc.seenit.in/batch_images/image_1523869702.jpg,http://lc.seenit.in/batch_images/image_1523946544.jpg,http://lc.seenit.in/batch_images/image_1523946817.jpg,http://lc.seenit.in/batch_images/image_1529981373.jpg,http://lc.seenit.in/batch_images/image_1531390599.jpg,http://lc.seenit.in/batch_images/image_1524041720.jpg,http://lc.seenit.in/batch_images/image_1526020655.jpg,http://lc.seenit.in/batch_images/image_1526039582.jpg,http://lc.seenit.in/batch_images/image_1526531776.jpg,http://lc.seenit.in/batch_images/image_1527044915.jpg,http://lc.seenit.in/batch_images/image_1529388123.jpg,http://dev.seenit.in/batch_images/image_1530175122.jpg,http://lc.seenit.in/batch_images/image_1529903433.jpg,http://lc.seenit.in/batch_images/image_1529903623.jpg,http://lc.seenit.in/batch_images/image_1529907756.jpg,http://lc.seenit.in/batch_images/image_1529912730.jpg,http://lc.seenit.in/batch_images/image_1529926418.jpg,http://lc.seenit.in/batch_images/image_1529934001.jpg,http://lc.seenit.in/batch_images/image_1529939591.jpg,http://lc.seenit.in/batch_images/image_1529939761.jpg,http://lc.seenit.in/batch_images/image_1529939902.jpg,http://lc.seenit.in/batch_images/image_1529948337.jpg,http://lc.seenit.in/batch_images/image_1529997571.jpg,http://lc.seenit.in/batch_images/image_1530068486.jpg,http://dev.seenit.in/batch_images/image_1530176726.jpg,http://dev.seenit.in/batch_images/image_1530176956.jpg,http://lc.seenit.in/batch_images/image_1530233854.jpg,http://lc.seenit.in/batch_images/image_1530261227.jpg,http://lc.seenit.in/batch_images/image_1530261632.jpg,http://lc.seenit.in/batch_images/image_1530430036.jpg,http://lc.seenit.in/batch_images/image_1530602620.jpg,http://lc.seenit.in/batch_images/image_1531122438.jpg,http://lc.seenit.in/batch_images/image_1531122892.jpg,http://lc.seenit.in/batch_images/image_1531122966.jpg,http://lc.seenit.in/batch_images/image_1531123153.jpg,http://lc.seenit.in/batch_images/image_1531123361.jpg,http://lc.seenit.in/batch_images/image_1531139900.jpg,http://lc.seenit.in/batch_images/image_1531145319.jpg,http://lc.seenit.in/batch_images/image_1531209731.jpg,http://lc.seenit.in/batch_images/image_1531300289.jpg,http://lc.seenit.in/batch_images/image_1531390555.jpg,http://lc.seenit.in/batch_images/image_1531312060.jpg,http://lc.seenit.in/batch_images/image_1531375019.jpg,http://lc.seenit.in/batch_images/image_1531482041.jpg,http://lc.seenit.in/batch_images/image_1531482874.jpg,http://lc.seenit.in/batch_images/image_1531529358.jpg,http://lc.seenit.in/batch_images/image_1532352566.jpg";
    
    var img : [Substring]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        img = imgs.split(separator: ",")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(Cell.self, forCellWithReuseIdentifier: "cell")
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return img.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! Cell
        cell.setImage(String(img[indexPath.item]))
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        (cell as!Cell).img.kf.cancelDownloadTask()
    }
}

class Cell: UICollectionViewCell {
    
    var img: UIImageView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        img = UIImageView(frame: .zero)
        img.translatesAutoresizingMaskIntoConstraints = false
        addSubview(img)
        NSLayoutConstraint(item: img, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: img, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: img, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: img, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0).isActive = true
        
    }
    
    override func prepareForReuse() {
        img.image = nil
        super.prepareForReuse()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImage(_ url: String) {
        if let url = URL(string: url) {
            img.kf.setImage(with: url)
        }
    }
}

