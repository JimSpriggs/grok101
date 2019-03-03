//
//  ViewController.swift
//  grok101
//
//  Created by John Hurst on 03/03/2019.
//  Copyright © 2019 John Hurst. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let todoEndpoint = "https://jsonplaceholder.typicode.com/todos/1"
        guard let url = URL(string: todoEndpoint) else {
            print("Error: cannot create URL")
            return
        }
        let urlRequest = URLRequest(url: url)
        
        let session = URLSession.shared
        let task = session.dataTask(with: urlRequest) { data, response, error in
            if let response = response {
                print(response)
            }
            if let error = error {
                print(error)
            }
        }
        task.resume()
        
    }


}

