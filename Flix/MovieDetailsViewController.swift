//
//  MovieDetailsViewController.swift
//  Flix
//
//  Created by Lovpreet Hansra on 6/21/20.
//  Copyright © 2020 Lovpreet Hansra. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!
    
    
    @IBOutlet weak var ivBackdrop: UIImageView!
    
    @IBOutlet weak var ivPoster: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var synopsisLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(movie["title"])
        titleLabel.text = movie["title"] as? String
        synopsisLabel.text = movie["overview"] as? String
        synopsisLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        if let string = movie["poster_path"] as? String {
            let posterUrl = URL(string: baseUrl + string)
            ivPoster.af_setImage(withURL: posterUrl!)
        }
        if let backdropPath = movie["backdrop_path"] as? String {
            let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
            ivBackdrop.af_setImage(withURL: backdropUrl!)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
