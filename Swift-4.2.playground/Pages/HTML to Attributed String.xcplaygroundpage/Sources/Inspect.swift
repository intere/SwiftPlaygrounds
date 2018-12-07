
import Foundation

extension Sequence {
    public func inspect(
        _ body: (Element) throws -> Void
        ) rethrows  -> Self {
        for element in self {
            try body(element)
        }
        return self
    }
}
