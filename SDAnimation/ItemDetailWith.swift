//
//  ItemDetailWithCart.swift
//  E-Commerce
//
//  Created by Ashv on 23/09/16.
//  Copyright © 2016 com.StarkDigital.app. All rights reserved.
//

import UIKit

class ItemDetailWithCart: UIViewController {

    @IBOutlet weak var btnPrevious: UIButton!
    @IBOutlet weak var btnNext: UIButton!
    @IBOutlet weak var imgProduct: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
   
    @IBOutlet weak var subView: UIView!
    @IBOutlet weak var imgMrp: UIImageView!
    @IBOutlet weak var lblProductName: UILabel!
    @IBOutlet weak var valueProductShortDescription: UILabel!
    @IBOutlet weak var lblMRP: UILabel!
    @IBOutlet weak var valueProductDescription: UILabel!
    @IBOutlet weak var valueMrpPrice: UILabel!
    
    @IBOutlet weak var specificationViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var btnspecificationHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var scrollViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var constraintTrailingOfProduct: NSLayoutConstraint!
    @IBOutlet weak var constraintXofProduct: NSLayoutConstraint!
    @IBOutlet weak var mainViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var lblSpecificationHeightConstr: NSLayoutConstraint!
    @IBOutlet weak var viewProductReview: UIView!
    
    @IBOutlet weak var valueProductPrice: UILabel!
    @IBOutlet weak var sLabelHeightConstraint: NSLayoutConstraint!
    
    @IBAction func nextBtnAction(sender: AnyObject) {
        
        let originalX = constraintXofProduct.constant
        let originalTrailing = constraintTrailingOfProduct.constant
        constraintXofProduct.constant += self.view.frame.size.width
        constraintTrailingOfProduct.constant = -100
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 1.5, animations:{
            self.constraintTrailingOfProduct.constant = originalTrailing
            self.constraintXofProduct.constant = originalX
            self.view.layoutIfNeeded()
        })
        

    }
    @IBAction func previousBtnAction(sender: AnyObject) {
        
        let originalX = constraintXofProduct.constant
        let originalTrailing = constraintTrailingOfProduct.constant
        constraintTrailingOfProduct.constant += self.view.frame.size.width
        constraintXofProduct.constant = -100
        self.view.layoutIfNeeded()
        UIView.animate(withDuration: 1.5, animations:{
            self.constraintTrailingOfProduct.constant = originalTrailing
            self.constraintXofProduct.constant = originalX
            self.view.layoutIfNeeded()
        })
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        lblSpecificationHeightConstr.constant = 25
        sLabelHeightConstraint.constant = 35
        mainViewHeightConstraint.constant = 55
        scrollViewHeightConstraint.constant = scrollViewHeightConstraint.constant + mainViewHeightConstraint.constant
        scrollView.contentSize = CGSize(width:self.scrollView.frame.size.width,height: scrollViewHeightConstraint.constant + 20)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
