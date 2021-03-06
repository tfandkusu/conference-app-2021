import Component
import Styleguide
import SwiftUI

public struct ContributorCell: View {
    private let contributor: Contributor

    public init(contributor: Contributor) {
        self.contributor = contributor
    }

    public var body: some View {
        VStack {
            ImageView(imageURL: contributor.iconUrl, placeholderSize: .medium)
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(AssetColor.Separate.image.color, lineWidth: 2)
                )
            Text(contributor.name)
                .foregroundColor(AssetColor.Base.primary.color)
                .font(.caption)
                .fontWeight(.medium)
        }
    }
}

struct ContributorCell_Preview: PreviewProvider {
    static var previews: some View {
        ContributorCell(
            contributor: Contributor(
                name: "dummy name",
                iconUrl: URL(string: "https://example.com")!
            )
        )
        ContributorCell(
            contributor: Contributor(
                name: "dummy name",
                iconUrl: URL(string: "https://example.com")!
            )
        )
        .environment(\.colorScheme, .dark)
    }
}
