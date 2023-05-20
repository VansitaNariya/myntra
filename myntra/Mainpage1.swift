//
//  Mainpage1.swift
//  myntra
//
//  Created by R92 on 08/05/23.
//

import UIKit

class Mainpage1: UIViewController , UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout
{
    @IBOutlet weak var cv: UICollectionView!
    @IBOutlet weak var cv1: UICollectionView!
    @IBOutlet weak var fashionbutton: UIButton!
    @IBOutlet weak var beautyButton: UIButton!
  
   
    
    var image : [String] = ["beauty" , "everyday Store" , "footwear" , "fwd" , "gadgets" , "kids" , "men" , "watch" , "women"]
    var name : [String] = ["beauty" , "everyday Store" , "footwear" , "fwd" , "gadgets" , "kids" , "men" , "watch" , "women"]
    var img : [String] = ["offer1" , "offer2" , "offer3" , "offer4" , "offer5"]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setfashionButton()
        setbeautybutton()
    }
    
    @IBAction func FashionButtonAction(_ sender: UIButton) {
        fashionbutton.backgroundColor = UIColor.systemGray
        beautyButton.backgroundColor = UIColor.white
    
    }
    
    @IBAction func beautyButtonAction(_ sender: UIButton) {
        fashionbutton.backgroundColor = UIColor.white
        beautyButton.backgroundColor = UIColor.systemGray
        naviget()
    }
    
    func setfashionButton(){
        fashionbutton.layer.cornerRadius = 25
        fashionbutton.layer.borderWidth = 2
        fashionbutton.layer.borderColor = UIColor.black.cgColor
        fashionbutton.layer.masksToBounds = true
    }
    func setbeautybutton(){
        beautyButton.layer.cornerRadius = 25
        beautyButton.layer.borderWidth = 2
        beautyButton.layer.borderColor = UIColor.black.cgColor
        beautyButton.layer.masksToBounds = true
    }
    func naviget() {
        let fashionPage = storyboard? .instantiateViewController(withIdentifier: "beauty") as! beauty
        navigationController?.pushViewController(fashionPage, animated: true)
}
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.cv
        {
        return image.count
        }
        else if collectionView == self.cv1
        {
            return img.count
        }
        else
        {
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.cv
        {
        let cell = cv.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell1
            
       cell.image.image = UIImage(named: img[indexPath.row])
            
        
            return cell
        }
        else if collectionView == self.cv1
        {
            let cell1 = cv1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell2
            
            cell1.img.image = UIImage(named: img[indexPath.row])
            
            return cell1
        }
        else
        {
//            let cell2 = cv2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell3
//
//            cell2.image.image = UIImage(named: arrimg[indexPath.row])
//
//            return cell2
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == cv
        {
            return CGSize(width: 161, height: 171)
        }
        else if collectionView == cv1
        {
            return CGSize(width: 360, height: 180)
        }
        else
        {
            return CGSize(width: 164, height: 157)
        }
        
    }
}
