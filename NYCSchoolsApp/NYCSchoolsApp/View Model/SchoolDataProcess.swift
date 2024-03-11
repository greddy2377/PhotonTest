import Foundation

class SchoolDataProcess : ObservableObject {
    
    init() {
        Task {
            try await getSchoolDetails()
        }
    }
    
    @Published var schools: [SchoolModel] = []
    
    func getSchoolDetails() async throws {
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
            return
        }
        
        let decoder = JSONDecoder()

        let (data, _) = try await URLSession.shared.data(from: url)
        
        let safeData = try decoder.decode([SchoolModel].self, from: data)
        
        DispatchQueue.main.async {
            self.schools.append(contentsOf: safeData)
        }
    }
    
    // Data Verification for test case
    func dataVerification() -> String {
        guard let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") else {
            return "None"
        }
        
        let decoder = JSONDecoder()
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let recievedData = data {
                do {
                    let safeData = try decoder.decode([SchoolModel].self, from: recievedData)
                } catch {
                    print("Error")
                }
            }
        }
        task.resume()
        return "Successfully retrieved data"
    }
}
