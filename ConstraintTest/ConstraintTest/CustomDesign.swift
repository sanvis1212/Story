//
//  CustomDesign.swift
//  ConstraintTest
//
//  Created by Vipin Pachauri on 04/12/18.
//  Copyright © 2018 ApptherMobilityTechnologiesPrivateLimited. All rights reserved.
//

import Foundation
import UIKit


@IBDesignable
class CustomChange : UIButton{
    
    @IBInspectable var cornerRadius: CGFloat = 0{
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
    }
    
}
