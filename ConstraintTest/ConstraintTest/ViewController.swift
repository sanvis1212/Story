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
    
    struct DataObject:Codable{
        var id: Int
        var name: String
        var link: String
        var imageUrl: String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        self.dataRecieveFromServer()
        self.dataReciveUseingCodable()
        
    }
    
    
    fileprivate func dataReciveUseingCodable(){
      let urlStirng = "https://api.letsbuildthatapp.com/jsondecodable/course"
        guard let url = URL(string: urlStirng) else { return }
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard error == nil else{
                print("Some thing went worng")
                return
            }
            guard let responseData = data else {
                print("Data not recieved")
                return
            }
            
            do {
                let responseValue = try JSONDecoder().decode(DataObject.self, from: responseData)
                print(responseValue)
            } catch let error {
                print(error)
            }
        }.resume()
        
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



