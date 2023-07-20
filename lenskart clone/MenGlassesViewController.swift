
//  MenGlassesViewController.swift
//  lenskart clone
//  Created by Ayush Patel on 06/03/23.
import UIKit

class MenGlassesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    var numberOfItemInRow: Int = 3
    var interItemSpac: CGFloat = 11
    var arrImages: [String] = ["1","2","3","4","5","6","7","m11","8","9","10","11"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCollectionViewcell()
    }
    private func registerCollectionViewcell(){
        collectionView.register(UINib(nibName: "MenGlassesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "men")
    }
}
extension MenGlassesViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: MenGlassesCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "men", for: indexPath) as! MenGlassesCollectionViewCell
        cell.glaseesImageView.image = UIImage(named: arrImages[indexPath.row])
        return cell
    }
}
extension MenGlassesViewController: UICollectionViewDelegateFlowLayout{
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
