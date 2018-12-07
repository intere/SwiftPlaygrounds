
import Foundation

/// By conforming to `RawRepresentable`, this gets decoded directly
/// as a value instead of as a JSON object
struct Email: Decodable, RawRepresentable {
    let rawValue: String
}

struct User: Decodable {
    let email: Email
}

let json = """
{ "email": "foo@example.com" }
"""

let user = try! JSONDecoder().decode(User.self, from: Data(json.utf8))

print(user.email.rawValue)
