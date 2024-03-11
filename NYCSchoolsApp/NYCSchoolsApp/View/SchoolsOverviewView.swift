import SwiftUI

struct SchoolOverviewView: View {
    let schoolName: String
    let overview: String
    let phoneNumber: String
    let neighborhood: String
    let website: String
    
    var body: some View {
        ScrollView {
            VStack(spacing: 80) {
                Text(schoolName)
                    .font(.title)
                    .fontWeight(.bold)
                VStack(alignment: .leading) {
                    Text("School Overview")
                        .font(.system(size: 24))
                        .fontWeight(.medium)
                    Text(overview).padding()
                }
                VStack (alignment : .center, spacing: 5) {
                    Text("Contact Details")
                        .font(.system(size: 24))
                        .fontWeight(.medium)
                    HStack {
                        Text("Neighborhood - ")
                        Text(neighborhood)
                    }
                    HStack {
                        Text("Phone Number - ")
                        Text(phoneNumber)
                    }
                    HStack {
                        Text("Website - ")
                        Text(website).frame(alignment: .center)
                    }
                }
            }
        }.padding()
    }
}

#Preview {
    SchoolOverviewView(schoolName: "Name", overview: "Students who are prepared for college must have an education that encourages them to take risks as they produce and perform. Our college preparatory curriculum develops writers and has built a tight-knit community. Our school develops students who can think analytically and write creatively. Our arts programming builds on our 25 years of experience in visual, performing arts and music on a middle school level. We partner with New Audience and the Whitney Museum as cultural partners. We are a International Baccalaureate (IB) candidate school that offers opportunities to take college courses at neighboring universities", phoneNumber: "12345", neighborhood: "1234 Street", website: "@mail")
}
