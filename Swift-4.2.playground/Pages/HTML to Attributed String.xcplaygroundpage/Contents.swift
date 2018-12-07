import UIKit
import PlaygroundSupport

extension String {

    /// Converts this string to an NSMutableAttributedString that has HTML content
    var toHtmlCommentString: NSMutableAttributedString? {
        guard let data = data(using: .utf8) else {
            return nil
        }

        do {
            let options: [NSAttributedString.DocumentReadingOptionKey: Any] = [
                .documentType: NSMutableAttributedString.DocumentType.html,
                .characterEncoding: String.Encoding.utf8.rawValue
            ]

            let mutableString = try NSMutableAttributedString(data: data,
                                                              options: options,
                                                              documentAttributes: nil)
            return mutableString
        } catch let error as NSError {
            print(error.localizedDescription)
            return nil
        }
    }

    private var commentDocumentAttributes: [NSAttributedString.Key: Any] {
        return [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16)]
    }

}

extension NSMutableAttributedString {

    var entireStringRange: NSRange {
        return NSRange(location: 0, length: length)
    }
}

let comment = """
<img src="https://lh3.googleusercontent.com/TEk76By8BbvJqb-6R8CFBU_P-i-5TjWt4Rif8sbQLloMEYUKE-6Ubhy7epY54PpSbZ4=s180">
<br /><br />
The ribbon cutting ceremony for Little Scraggy West is on July 16, 2016.
This will \"officially\" open the entire Little Scraggy Trail at Buffalo Creek!
You can join us at this free celebration:
<a href=\"http://www.comba.org/projects/little-scraggy-trail/little-scraggy-trail-workday-and-ribbon-cutting\"
rel=\"nofollow noopener noreferrer\" target=\"_blank\">comba.org/projects/little-s&hellip;</a>
<br /><br />
"""

let aString = comment.toHtmlCommentString!
aString.length

let vc = LabelVC()
vc.label.attributedText = aString
PlaygroundPage.current.liveView = vc
