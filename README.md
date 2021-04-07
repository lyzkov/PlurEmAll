# PlurEmAll

Plural forms string manipulation utility for making up countable terms

> PLUR is an aggregation of ideas that were part of the earlier hippie and peace movement ("peace", "love") and black and hip hop culture ("respect"). Specific use of the term dates to the early 1990s rave scene. One of the most influential uses of the term was made by DJ Frankie Bones in June 1993.

## Usage

With PlurEmAll you can easily make any countable term up to you, ready to read as a plural form.

```swift
    print("apple".plurify(with: 3)) // Prints: "3 apples"
    print("apple".plurify(with: -1)) // Prints: "an apple"
    print("apple".plurify(with: 0)) // Prints: "no apples"
    
```

You can also use uncountable `Cardinality` to denominate a multitude of term.

```swift
public enum Cardinality {
    case none
    case single
    case multiple
}
```

To make up a plural form with uncountable cardinality pass it to parameter like a count.

```swift
    print("apple".plurify(with: .multiple)) // Prints: "apples"
    print("apple".plurify(with: .single)) // Prints: "an apple"
    print("apple".plurify(with: .none)) // Prints: "no apples"
```

Easy peace, love, unity and respect for apple!

## TO-DO

- [ ]  Count expressed in any number
- [ ]  Support for irregular articles
- [ ]  Interface for countable terms to distinguish them from strings

## Author

Pietrus Łyczba, lyzkov@gmail.com

## License

THE SOFTWARE IS PROVIDED "AS IS"
