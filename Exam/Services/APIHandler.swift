//
//  APIHandler.swift
//  Exam
//
//  Created by Narumol Wangampa on 26/9/2561 BE.
//  Copyright © 2561 Narumol Wangampa. All rights reserved.
//

import Foundation
import ObjectMapper

class APIHandler{
    
    
    func getVdoList(completionHandler: @escaping  (VdoSearchResponse?, Error?) -> ()) {
        
        guard let path = Bundle.main.path(forResource: "Config", ofType: "plist") else { return }
        guard let config: NSDictionary = NSDictionary(contentsOfFile: path) else { return }
        let urlString = URL(string: config.object(forKey: "url_vdolist") as! String)
        
        if let url = urlString {
            let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error ?? "")
                    completionHandler(nil, error)
                } else {
                    if let usableData = data {

                        //let jsonResult = try? JSONDecoder().decode(VdoSearchResponse.self, from: usableData)
                       
                        guard let json = try? JSONSerialization.jsonObject(with: usableData, options:.mutableContainers) as! [String : Any] else { return }
                        
                            let result = VdoSearchResponse(JSON: json)
                            completionHandler(result, nil)
                        
                      
                    }
                }
            }
            task.resume()
        }
    }
}
