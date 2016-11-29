//
//  ViewController.swift
//  MovieTap
//
//  Created by HS User 4 on 2016/09/26.
//  Copyright © 2016 Ntobeko. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
    
    var data: [Movie] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NowPlayingMoviesRequest.NowPlaying { (movies) in
            self.data = movies
            self.tableView.reloadData()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.data.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieCell", for: indexPath)
        
        let movie = self.data[indexPath.row]
        cell.textLabel?.text = String(movie.title)
        cell.detailTextLabel?.text = String(movie.releaseDate)
        
        return cell
    }
    
}
