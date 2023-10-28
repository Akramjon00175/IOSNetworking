
import Foundation


class EmployeesViewModel: ObservableObject {
    
    @Published var employees = [Datum]()
    @Published var isload = false
    
    func apiEmployeesList(){
        
        isload = true
        
        AFHttp.get(url: AFHttp.API_EMPLOYEES_LIST, params: AFHttp.paramsEmpty(), handler: { [self] response in
            
            self.isload = false
            
            switch response.result {
                
            case.success:
               
                self.employees = try! JSONDecoder().decode(Employees.self, from: response.data!).data
                print(employees)
        
  
               
            case let .failure(error):
                print(error)
                
            }
        })
    }
    
}
