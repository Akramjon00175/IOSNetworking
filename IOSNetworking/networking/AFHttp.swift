
import Foundation
import Alamofire

private let IS_TESTER = true
private let DEP_SER = "https://dummy.restapiexample.com/"
private let DEV_SER = "https://dummy.restapiexample.com/"

// https://dummy.restapiexample.com/api/v1/employees


let headers: HTTPHeaders = [

    "Accert": "application/json"

]


class AFHttp {
    
    // MARK: - AFHttp Requests
    
    class func get(url: String,params: Parameters, handler: @escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url), method: .get, parameters: params, headers: headers).validate().responseJSON(completionHandler: handler)
    }
    class func post(url: String,params: Parameters, handler: @escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url), method: .post, parameters: params, headers: headers).validate().responseJSON(completionHandler: handler)
    }
    class func put(url: String,params: Parameters, handler: @escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url), method: .put, parameters: params, headers: headers).validate().responseJSON(completionHandler: handler)
    }
    class func delete(url: String,params: Parameters, handler: @escaping (AFDataResponse<Any>) -> Void) {
        AF.request(server(url: url), method: .delete, parameters: params, headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    // MARK: - AFHttp Methods
    
    class func server(url: String) -> URL {
        
        if(IS_TESTER){
            return URL(string: DEV_SER + url)!
        }
        return URL(string: DEP_SER + url)!
    }
    

    
    // MARK: - AFHttp Employees Apis
    
    static let API_EMPLOYEES_LIST   = "api/v1/employees"
    static let API_EMPLOYEES_SINGLE = "api/v1/employee/1"
    static let API_EMPLOYEES_CREATE = "api/v1/create"
    static let API_EMPLOYEES_UPTADE = "api/v1/update/21"
    static let API_EMPLOYEES_DELETE = "api/v1/delete/2"
    
    
    
    // MARK: - Params

    
    class func paramsEmpty() -> Parameters {
        
        let parameters: Parameters = [:]
        return parameters
    }
    
    //  MARK: - Employees
    
    class func paramsEmployeesCreate(employees: Employees, datum: Datum ) -> Parameters {
        let parameters: Parameters = [
        
            "status": employees.status,
            "data": employees.data,
            "message": employees.message,
            
            "id": datum.id,
            "employeeName": datum.employeeName,
            "employeeSalary": datum.employeeSalary,
            "employeeAge": datum.employeeAge,
            "profileImage": datum.profileImage
            
        ]
        return parameters
    }
    
    class func paramsEmployeesUpdate(employees: Employees, datum: Datum ) -> Parameters {
        let parameters: Parameters = [
        
            "status": employees.status,
            "data": employees.data,
            "message": employees.message,
            
            "id": datum.id,
            "employeeName": datum.employeeName,
            "employeeSalary": datum.employeeSalary,
            "employeeAge": datum.employeeAge,
            "profileImage": datum.profileImage
            
        ]
        return parameters
    }
    
}

