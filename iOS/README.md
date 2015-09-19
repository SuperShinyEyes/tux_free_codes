## Futurice kickstarter 2015.Sept.18th
Teacher: Martin Richter

### The Ecosystem
* Premium market

### The Good
* High adoption rate(live on the edge)
* Extensive frameworks to cover almost anything from language parsing to complex calendar calculations.

### The bad
* Demanding audience
* Live on the edge
* Frameworks feel like built for fat clients, not today's thin apps within services
* App Store is broken

### Xcode playground
* Good for playing around with Swift

### iOS tutorial
* [Ray Wenderlich](http://www.raywenderlich.com/)
* [Stanford](https://itunes.apple.com/us/course/developing-ios-8-apps-swift/id961180099)
* [Apple Developer Community](https://developer.apple.com/library/prerelease/ios/referencelibrary/GettingStarted/DevelopiOSAppsSwift/)
* [Swift ebook](https://itunes.apple.com/us/book/swift-programming-language/id881256329?mt=11)
* [Futurice](https://github.com/futurice/ios-good-practices)

### Question
```
class ArticleListViewController: UITableViewController {

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }

}
```

```
class ArticleStore {
    typealias SuccessHandler = [Article] -> Void
}
```
