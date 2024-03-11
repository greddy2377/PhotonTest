import SwiftUI

struct NYCSchools: View {
    @StateObject var schoolDetails = SchoolDataProcess()
    var body: some View {
        NavigationStack {
            VStack {
                Text("NYC High Schools List")
                    .font(.title)
                    .fontWeight(.bold)
                List(schoolDetails.schools, id: \.self) {
                    details in
                    HStack {
                        VStack {
                            HStack {
                                Text("Name - ")
                                Spacer()
                                Text(details.school_name)
                            }
                            HStack() {
                                Text("DBN - ")
                                Spacer()
                                Text(details.dbn)
                            }
                        }
                        NavigationLink("", destination: SchoolOverviewView(schoolName: details.school_name, overview: details.overview_paragraph, phoneNumber: details.phone_number, neighborhood: details.neighborhood, website: details.website))
                            .frame(width: 10)
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    NYCSchools()
}
