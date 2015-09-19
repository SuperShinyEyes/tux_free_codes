//
//  ArticleStore.swift
//  Reader
//
//  Created by YOUNG on 9/19/15.
//  Copyright © 2015 tux. All rights reserved.
//

import Foundation
import Kanna

// iOS devices are not good with asynchronization
// All data is supposed to be in the devices
class ArticleStore {
    typealias SuccessHandler = [Article] -> Void
    
    func fetchArticles(success success: SuccessHandler) {
        
        let url = NSURL(string: "http://feeds.bbci.co.uk/news/rss.xml")!
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) {
            (data, response, error) in if let data = data {
                if let xml = Kanna.XML(xml: data, encoding: NSUTF8StringEncoding) {
                    var articles: [Article] = []
                    
                    for item in xml.xpath("//item") {
                        if let title = item.xpath("title").text,
                        description = item.xpath("description").text,
                        linkString = item.xpath("link").text,
                            url = NSURL(string: linkString) {
                                let article = Article(title: title, description: description, url: url)
                                articles.append(article)
                        }
                    }
                            success(articles)
                }
            }
        }
        
        task.resume()

    }
}
