//
//  MenuManager.swift
//  CoffeeMasters
//
//  Created by Nadia Lovely on 26/07/24.
//

import Foundation
import Alamofire

class MenuManager: ObservableObject {
//    kalau pengen view punya binding, kasi aja @Published. jadi kita tahu kapan menu nya berubah
//    another anotation, mirip sama @State
//    @State vs @Published
//    kalau @State biasanya digunakan untuk mengelola state lokal. @State hanya dapat digunakan untuk View => internal
//    kalau @Published untuk beberapa view. Hanya dapat digunakan didalam ObservableObject => global, >1 view

    @Published var menu: [Category] = []
    
//  when the app start it will trigger this api call
//  init() is a constructor, so it called immidiately and automatically when app start
    init(){
        refreshItemsFromNetwork()
    }
    
    func refreshItemsFromNetwork(){
        AF.request("https://firtman.github.io/coffeemasters/api/menu.json")
//        its a bit weird here [Category].self but its just tell us what are you expecting as the return
//        it will parse the json and map it automatically
//        ofc we can customize the map but we're not gonna do that (OK NGULIK INI ABIS COURSE NYA KELAR)
            .responseDecodable(of: [Category].self ){response in
                if let menuFromNetwork = response.value {
                    print(response.value)
                    self.menu = menuFromNetwork
                }
            }
    }
}


