//
//  ContentView.swift
//  IOSNetworking
//
//  Created by Akramjon on 28/10/23.
//

import SwiftUI
import Alamofire

struct ContentView: View {
    
    @ObservedObject var viewModel = EmployeesViewModel()
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                List(self.viewModel.employees, id: \.id){ employee in
                    VStack(alignment: .leading){
                    Text(employee.employeeName).bold()
                    HStack{
                        Text("Age: ").font(.subheadline)
                        Text("\(employee.employeeAge)").font(.subheadline)
                        Text("| Salary: ").font(.subheadline)
                        Text("\(employee.employeeSalary)").font(.subheadline)
                    }
                }
                }
                .listStyle(PlainListStyle())
            }
            .navigationBarTitle("Employees")
            
        }.onAppear{
            self.viewModel.apiEmployeesList()
        }
        
    }
}

#Preview {
    ContentView()
}


