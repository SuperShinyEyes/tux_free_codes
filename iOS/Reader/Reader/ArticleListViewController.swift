//
//  ArticleListViewController.swift
//  Reader
//
//  Created by YOUNG on 9/19/15.
//  Copyright © 2015 tux. All rights reserved.
//

import UIKit  // Contains Foundation

class ArticleListViewController: UITableViewController {

    private let articleStore = ArticleStore()
    private var articles: [Article] = []
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // weak self breaks the retain cycle
        articleStore.fetchArticles { [weak self] articles in
            dispatch_async(dispatch_get_main_queue(), {
                self?.articles = articles
                self?.tableView.reloadData()
            })
        }
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showArticle",
        let detailVC = (segue.destinationViewController as? UINavigationController)?.topViewController as? ArticleDetailViewController,
        let indexPath = tableView.indexPathForSelectedRow {
            let article = articles[indexPath.row]
            detailVC.article = article
            
        }
    }
    
    // MARK: UITableViewDataSouirce
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    // Won't be called if articles.count == 0
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Crash if we don't find a cell with the identifier
        let cell = tableView.dequeueReusableCellWithIdentifier("basicCell")!
        
        let article = articles[indexPath.row]
        
        cell.textLabel?.text = article.title
        cell.detailTextLabel?.text = article.description
        return cell
    }
}