import SwiftUI

struct RecomendedProperty: View {
    
    let properties: [Property] = [
        Property(
            imageURL: "Home1",
            type: "Apartment",
            name: "Skyline Flat",
            location: "New York, NY",
            price: "$2,500",
            rating: 4.5,
            isFavorite: false
        ),
        Property(
            imageURL: "Home2",
            type: "Villa",
            name: "Palm Oasis",
            location: "Miami, FL",
            price: "$4,000",
            rating: 4.8,
            isFavorite: false
        ),
        Property(
            imageURL: "Home3",
            type: "Studio",
            name: "Compact Comfort",
            location: "San Francisco, CA",
            price: "$1,800",
            rating: 4.2,
            isFavorite: false
        ),
        Property(
            imageURL: "Home4",
            type: "Condo",
            name: "Urban Nest",
            location: "Chicago, IL",
            price: "$2,200",
            rating: 4.4,
            isFavorite: false
        ),
        Property(
            imageURL: "Home5",
            type: "House",
            name: "Sunset Home",
            location: "Los Angeles, CA",
            price: "$3,500",
            rating: 4.7,
            isFavorite: false
        )
    ]
    
    @State private var searchText = ""
    @State private var location = "Sri Lanka"
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Recommended Property")
                    .font(.headline)
                    .bold()
                
                Spacer()
                
                Button(action: {
                    print("See all Recommended Property")
                }) {
                    Text("See all")
                        .foregroundColor(.blue)
                        .font(.subheadline)
                        .bold()
                }
            }
            .padding(.horizontal)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(properties, id: \.name) { property in
                        PropertyCard(property: property)
                    }
                }
                .padding(.horizontal)
            }
        }
    }
}

#Preview {
    RecomendedProperty()
}
