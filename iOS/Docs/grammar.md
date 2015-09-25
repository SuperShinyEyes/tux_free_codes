* Swift infers types if implicit.
* Once a constant or variable has a type, that type can't be changed.

```swift
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
```
In Xcode, *opt + click* will show the data type.

```swfit
let label = "The width is "
let width = 94
let widthLabel = label + String(width)
let widthLabelTwo = "The width is \(width)"
```

### nil & optional
```swfit
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
```
> nil cannot be used with nonoptional constants and variables. If a constant or variable in your code needs to work with the absence of a value under certain conditions, always declare it as an optional value of the appropriate type.

**nil in Swift vs. Objective-C**
> Swift’s nil is not the same as nil in Objective-C. In Objective-C, nil is a pointer to a nonexistent object. In Swift, nil is not a pointer—it is the absence of a value of a certain type. Optionals of any type can be set to nil, not just object types.


```swfit

```

```swfit

```

```swfit

```

```swfit

```

```swfit

```

```swfit

```

```swfit

```

```swfit

```
