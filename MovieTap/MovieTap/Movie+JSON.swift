//
//  Movie+JSON.swift
//  MovieTap
//
//  Created by HS User 4 on 2016/09/26.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import Foundation
struct MovieError: Error {}

extension Movie {
    init(json: [String : Any]) throws {
        guard let title = json["title"] as? String,
              let releaseDate = json["release_date"] as? String else {
                throw MovieError()
        }
        self.title = title
        self.releaseDate = releaseDate
    }
}
