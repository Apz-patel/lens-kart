
//  HomePageViewController.swift
//  lenskart clone
//  Created by Ayush Patel on 28/02/23.
import UIKit
class HomePageViewController: UIViewController {
    @IBOutlet weak var knowYourLensesCollectionView: UICollectionView!
    @IBOutlet weak var lastCollectionView: UICollectionView!
    @IBOutlet var butItYourWayCollection: UICollectionView!
    @IBOutlet weak var thirdCollectionView: UICollectionView!
    //    @IBOutlet weak var secondCollectionView: UICollectionView!
    //    @IBOutlet weak var grantPermissionLable: UILabel!
    @IBOutlet weak var newLonches: UICollectionView!
    @IBOutlet weak var firstContainerView: UIView!
    @IBOutlet weak var secondContainerView: UIView!
    @IBOutlet weak var segmentedButton: UISegmentedControl!
    @IBOutlet weak var firstCollection: UICollectionView!
    @IBOutlet weak var karanJoharCollectionView: UICollectionView!
    var arrImage: [String] = ["g1","g2","g3","g4","g5","g6","g7","g8","g9"]
    var arrOfImage2: [String] = ["Image 14","Image 15","Image 16","Image 17","Image 18"]
    var arrOfImage3: [String] = ["Image 24","Image 25","Image 26","Image 27"]
    var arrImage4: [String] = ["im1","im2","im3","im4","im5"]
    var arrImage5:[String] = ["k1","k2","k3","k4","k5"]
    var arrImage6:[String] = ["z1","z2","z3","z4"]
    var arrImage7:[String] = ["z5","z6"]
    var numberOfItemInRow: Int = 2
    var interItemSpac: CGFloat = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCell()
        setIndex(index: 0)
        //  grantPermissionLable.layer.borderWidth = 1
    }
    private func registerCell(){
        firstCollection.register(UINib(nibName: "LensCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "lens")
        //        secondCollectionView.register(UINib(nibName: "ImagesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ImagesCollectionViewCell")
        karanJoharCollectionView.register(UINib(nibName: "KaranJoharCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "karan")
        newLonches.register(UINib(nibName: "AsSeenOnCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "AsSeenOnCollectionViewCell")
        
        butItYourWayCollection.register(UINib(nibName: "KiaraCollectionViewCell", bundle: nil),
                                        forCellWithReuseIdentifier: "KiaraCollectionViewCell")
        lastCollectionView.register(UINib(nibName: "LastCollectionViewCell", bundle: nil),
                                    forCellWithReuseIdentifier: "LastCollectionViewCell")
        knowYourLensesCollectionView.register(UINib(nibName: "KnowYourLensesCollectionViewCell", bundle: nil),
                                              forCellWithReuseIdentifier: "KnowYourLensesCollectionViewCell")
        
    }
    private func setIndex(index: Int){
        switch index{
        case 0:
            firstContainerView.isHidden = false
            secondContainerView.isHidden = true
        case 1:
            firstContainerView.isHidden = false
            secondContainerView.isHidden = true
        case 2:
            firstContainerView.isHidden = true
            secondContainerView.isHidden = false
        default:
            print("nothing")
        }
    }
    @IBAction func segmentedAction(_ sender: UISegmentedControl){
        setIndex(index: sender.selectedSegmentIndex)
    }
}
extension HomePageViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == firstCollection{
            return arrImage.count
        }else if collectionView == karanJoharCollectionView{
            return arrOfImage3.count
        }else if collectionView == newLonches{
            return arrImage4.count
        }else if collectionView == butItYourWayCollection{
            return arrImage5.count
        }else if collectionView == lastCollectionView{
            return arrImage6.count
        }else{
            return arrImage7.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == firstCollection {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "lens", for: indexPath) as! LensCollectionViewCell
            cell.lensImageView.image = UIImage(named: arrImage[indexPath.row])
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 10
            return cell
        } else if collectionView == karanJoharCollectionView{
            let cell = karanJoharCollectionView.dequeueReusableCell(withReuseIdentifier: "karan", for: indexPath) as! KaranJoharCollectionViewCell
            cell.imageView.image = UIImage(named: arrOfImage3[indexPath.row])
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 10
            return cell
        }else if collectionView == newLonches{
            let cell = newLonches.dequeueReusableCell(withReuseIdentifier: "AsSeenOnCollectionViewCell", for: indexPath) as! AsSeenOnCollectionViewCell
            cell.imageView.image = UIImage(named: arrImage4[indexPath.row])
            return cell
        }else if collectionView == butItYourWayCollection{
            let cell = butItYourWayCollection.dequeueReusableCell(withReuseIdentifier: "KiaraCollectionViewCell", for: indexPath) as! KiaraCollectionViewCell
            cell.kiaraImageView.image = UIImage(named: arrImage5[indexPath.row])
            return cell
        }
        else if collectionView == lastCollectionView{
            let cell = lastCollectionView.dequeueReusableCell(withReuseIdentifier: "LastCollectionViewCell", for: indexPath) as! LastCollectionViewCell
            cell.lastImageView.image = UIImage(named: arrImage6[indexPath.row])
            return cell
        }else{
            let cell = knowYourLensesCollectionView.dequeueReusableCell(withReuseIdentifier: "KnowYourLensesCollectionViewCell", for: indexPath) as! KnowYourLensesCollectionViewCell
            cell.lensesImageView.image = UIImage(named: arrImage7[indexPath.row])
            return cell
        }
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == karanJoharCollectionView{
        }
    }
}
extension HomePageViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == firstCollection{
            return CGSize(width: 120, height: 112.5)
        }else if collectionView == karanJoharCollectionView{
            return CGSize(width: 230, height: 250)
        }else if collectionView == newLonches{
            return CGSize(width: 370, height: 340)
        }else if collectionView == butItYourWayCollection{
            return CGSize(width: 370, height: 340)
        }else if collectionView == lastCollectionView{
            return CGSize(width: 231, height: 170)
            let spacing = CGFloat(numberOfItemInRow+1)*interItemSpac
            let avilableWidth = collectionView.frame.width - spacing
            let cellWidth = avilableWidth / CGFloat(numberOfItemInRow)
            return CGSize(width: cellWidth, height: 170)
        }else{
            return CGSize(width: 231, height: 170)
            let spacing = CGFloat(numberOfItemInRow+1)*interItemSpac
            let avilableWidth = collectionView.frame.width - spacing
            let cellWidth = avilableWidth / CGFloat(numberOfItemInRow)
            return CGSize(width: cellWidth, height: 170)
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 16, left: 8, bottom: 0, right: 8)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 8
    }
}

//jai shree ram
