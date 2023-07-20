//
//  KidsViewController.swift
//  lenskart clone 123
//
//  Created by Arpit Thummar on 23/03/23.
//

import UIKit

class KidsViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var arrOfimages: [String] = ["88","22","33","44","55","66","77"]
    var numberOfItemInRow: Int = 3
    var interItemSpac: CGFloat = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionView()
    }
    private func registerCollectionView(){
        collectionView.register(UINib(nibName: "KidsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KidsCollectionViewCell")
    }
}
extension KidsViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrOfimages.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: KidsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "KidsCollectionViewCell", for: indexPath) as! KidsCollectionViewCell
        cell.kidsImageView.image = UIImage(named: arrOfimages[indexPath.row])
        return cell
    }
}
extension KidsViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            let spacing = CGFloat(numberOfItemInRow+1)*interItemSpac
            let avilableWidth = collectionView.frame.width - spacing
            let cellWidth = avilableWidth / CGFloat(numberOfItemInRow)
            return CGSize(width: cellWidth, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 8, bottom: 0, right: 8)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}
