//  THE SOFTWARE IS PROVIDED "AS IS"

import Foundation

public enum Cardinality {
    case none
    case single
    case multiple

    public init(from count: Int) {
        switch count {
        case 0:
            self = .none
        case -1...1:
            self = .single
        default:
            self = .multiple
        }
    }
}
