//
//  ViewController.swift
//  Exam
//
//  Created by Narumol Wangampa on 26/9/2561 BE.
//  Copyright © 2561 Narumol Wangampa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var vdoList:[VdoItem]?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         self.collectionView.register(UINib(nibName: "VdoCell", bundle: nil), forCellWithReuseIdentifier: "VdoCell")
        
        APIHandler().getVdoList(){ result, error in
            
            if (error != nil) {
                
                return
            }
            
            if(result != nil){
                
                print("z")
                
                
                DispatchQueue.main.async {
                    self.vdoList = result?.items
                    self.collectionView.reloadData()
                }
            }
            
            
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let item:VdoItem = self.vdoList![indexPath.row]
//
//    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item:VdoItem = self.vdoList![indexPath.row]

        let cell:VdoCell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "VdoCell", for: indexPath) as! VdoCell
        cell.item = item
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if vdoList != nil{
            return (vdoList?.count)!
        }else{
            return 0
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

