//
//  ItunesService.swift
//  ViperDemo
//
//  Created by salih topcu on 2.07.2019.
//  Copyright © 2019 salih topcu. All rights reserved.
//

import Foundation
import Moya

enum Environment: String {
    case production = "https://itunes.apple.com/search?parameterkeyvalue&term=all&limit=50"
}
var environment: Environment = .production

enum itunesAPI {
    case search
}

let pluginsArray:[PluginType] = [NetworkLoggerPlugin(cURL: true)]
let provider = MoyaProvider<itunesAPI>(plugins: pluginsArray)

extension itunesAPI: TargetType {
    var baseURL: URL {
        return URL(string: environment.rawValue)!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        switch self {
        case .search:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        return .requestPlain
    }
    
    var headers: [String : String]? {
        return nil
    }
    
}
