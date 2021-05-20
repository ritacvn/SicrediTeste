//
//  Parser.swift
//  sicrediTest
//
//  Created by Rita de Cássia Vasconcelos do Nascimento on 19/05/21.
//

import Foundation

func parse() {
    guard let api = URL(string: "http://5f5a8f24d44d640016169133.mockapi.io/api/events") else { return}
    
    URLSession.shared.dataTask(with: api) {
        data, response, error in
        if error != nil {
            print(error?.localizedDescription)
            return
        }
        do{
          let result = try JSONDecoder().decode(Event.self, from: data!)
            print(result)
        } catch{
            
        }
    }
}
