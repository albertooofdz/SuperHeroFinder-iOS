//
//  DetailViewController.swift
//  SuperheroFinder
//
//  Created by Mañanas on 16/4/24.
//

import UIKit

class DetailViewController: UIViewController{
    
    var superhero: Superhero? = nil
    
    
    @IBOutlet var intProgressBar: UIProgressView!
    @IBOutlet var StrProgressBar: UIProgressView!
    @IBOutlet var cbtProgressBar: UIProgressView!
    @IBOutlet var pwrProgressBar: UIProgressView!
    @IBOutlet var dbtProgressBar: UIProgressView!
    @IBOutlet var spdProgressBar: UIProgressView!
    
    @IBOutlet var publisherLabel: UILabel!
    @IBOutlet var imgImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        intProgressBar.progress = (Float((superhero?.powerstats.intelligence)!) ?? 0.0) / 100.0
        StrProgressBar.progress = (Float((superhero?.powerstats.strength)!) ?? 0.0) / 100.0
        pwrProgressBar.progress = (Float((superhero?.powerstats.power)!) ?? 0.0) / 100.0
        cbtProgressBar.progress = (Float((superhero?.powerstats.combat)!) ?? 0.0) / 100.0
        dbtProgressBar.progress = (Float((superhero?.powerstats.durability)!) ?? 0.0) / 100.0
        spdProgressBar.progress = (Float((superhero?.powerstats.speed)!) ?? 0.0) / 100.0
        nameLabel.text = superhero?.name
        imgImageView.loadFrom(url: superhero!.image.url)
        publisherLabel.text = superhero?.biography.publisher
        
      
    }
}
