//
//  ViewController.swift
//  SuperheroFinder
//
//  Created by Mañanas on 16/4/24.
//

import UIKit

class ViewController: UIViewController,
                      UITableViewDelegate,
                      UITableViewDataSource,
                      UISearchBarDelegate{
    
    
    var superheroList: [Superhero] = []

    

    @IBOutlet var tableView: UITableView!
    
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = superheroList[indexPath.row]
                
        let cell: SuperheroViewCellTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SuperheroViewCellTableViewCell
                
        cell.render(superhero: item)
        //cell.titleLabel.text = item.name
        //cell.subtitleLabel.text = item.dates
        //cell.signImageView.image = item.image
        
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return superheroList.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let viewController = segue.destination as! DetailViewController
        viewController.superhero = superheroList[tableView.indexPathForSelectedRow!.row]
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.navigationItem.title = "Superheroes"
        //tableView.register(SuperheroViewCellTableViewCell.getNib(), forCellReuseIdentifier: "cell")
        SuperheroProvider.searchByName(query: "a", completionHandler: { [weak self] results in
                    self?.superheroList = results
                    DispatchQueue.main.async {
                        self?.tableView.reloadData()
                    }
                })
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

