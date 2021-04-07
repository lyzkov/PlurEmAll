//  THE SOFTWARE IS PROVIDED "AS IS"

import Foundation

extension String {

    /// Makes up a plural form enclosing base term with appropriate affix of a given count.
    /// - Parameter count: denotes integral  multitude of term described by base string
    /// - Returns: base string enclosed with apriopriate prefix and suffix
    public func plurify(with count: Int) -> String {
        let cardinality = Cardinality(from: count)
        var plurified = plurify(with: cardinality)
        if case .multiple = cardinality {
            plurified = "\(count) \(plurified)"
        }

        return plurified
    }

    /// Makes up a plural form enclosing base term with appropriate affix of a given cardinality.
    /// - Parameter cardinality: denotes multitude of term described by base string
    /// - Returns: base string enclosed with apriopriate prefix and suffix
    public func plurify(with cardinality: Cardinality) -> String {
        switch cardinality {
        case .none:
            return "no \(self)s"
        case .single:
            return "\(article) \(self)"
        case .multiple:
            return "\(self)s"
        }
    }
    
    private var article: String {
        guard ["a","e","i","o","u"].contains(first) else {
            return "a"
        }

        return "an"
    }

}
