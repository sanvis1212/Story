//
//  ViewController.swift
//  ConstraintTest
//
//  Created by Vipin Pachauri on 26/11/18.
//  Copyright © 2018 ApptherMobilityTechnologiesPrivateLimited. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.dataRecieveFromServer()
        
    }
    
    
    
    fileprivate func dataRecieveFromServer(){
        let urlString = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: urlString) else {
            print("Url is not valid")
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard error == nil else {
                return print("Dint get response")
            }
            guard let responseData = data else {
                print("response not found")
                return
            }
            //PArsing is pending
        }
    }
    
//    fileprivate func dataRecieveFromServer(){
//
//        let url = "https://api.letsbuildthatapp.com/jsondecodable/course"
//        guard let urlString = URL(string: url) else {
//            print("Url not found ")
//            return
//        }
//        var requeset = URLRequest(url: urlString)
//        requeset.httpMethod = "GET"
//
//
//         URLSession.shared.dataTask(with: requeset) { (data, response, error) in
//            guard error == nil else {
//                print("Din't get response")
//                return
//            }
//            guard let responseData = data else {
//                print("Data not found")
//                return
//            }
//
//            do {
//                let objectData = try JSONSerialization.jsonObject(with: responseData, options: [])
//
//                print(objectData)
//            } catch {
//                print("error found")
//            }
//
//        }.resume()
//
//    }
    
}



