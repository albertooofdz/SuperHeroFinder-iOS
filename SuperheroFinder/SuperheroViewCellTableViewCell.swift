//
//  SuperheroViewCellTableViewCell.swift
//  SuperheroFinder
//
//  Created by Mañanas on 16/4/24.
//

import UIKit

class SuperheroViewCellTableViewCell: UITableViewCell {

    
    
    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var imageIV: UIImageView!
    
    func render (superhero: Superhero){
        nameLabel.text = superhero.name
        imageIV.image = UIImage(named: "image-placeholder")
        imageIV.loadFrom(url: superhero.image.url)
        
    }
}
