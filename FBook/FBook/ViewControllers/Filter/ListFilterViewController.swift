//
//  ListFilterViewController.swift
//  FBook
//
//  Created by admin on 5/23/17.
//  Copyright © 2017 Framgia. All rights reserved.
//

import UIKit

class ListFilterViewController: UIViewController {

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = AppStrings.Title.filter.rawValue
    }
    
    @IBAction func onTapCancel(sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func onTapSubmit(sender: AnyObject) {
        
    }
}

extension ListFilterViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemFilterCell", for: indexPath)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: AppStoryboards.segueIdentifierShowChooseFilter, sender: nil)
    }
}