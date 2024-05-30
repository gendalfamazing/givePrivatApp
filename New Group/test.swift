//
//  test.swift
//  8button
//
//  Created by Artur Vladymcev on 30.05.24.
//

import SwiftUI

struct BookingView: View {
    @State private var name: String = ""
    @State private var phone: String = ""
    @State private var selectedService: String = "Услуга 1"
    @State private var selectedDate = Date()
    @State private var isSubmitting = false
    @State private var bookingMessage: String?

    var services = ["Услуга 1", "Услуга 2", "Услуга 3"]

    var body: some View {
        Form {
            Section(header: Text("Персональная информация")) {
                TextField("Имя", text: $name)
                TextField("Телефон", text: $phone)
            }

            Section(header: Text("Услуга")) {
                Picker("Выберите услугу", selection: $selectedService) {
                    ForEach(services, id: \.self) {
                        Text($0)
                    }
                }
            }

            Section(header: Text("Дата и время")) {
                DatePicker("Выберите дату", selection: $selectedDate, displayedComponents: .date)
            }

            Button(action: {
                bookService()
            }) {
                Text("Записаться")
            }
            .disabled(isSubmitting)
            
            if let message = bookingMessage {
                Text(message)
                    .foregroundColor(.green)
            }
        }
        .navigationBarTitle("Запись и бронирование", displayMode: .inline)
    }

    private func bookService() {
        isSubmitting = true
        NetworkManager.shared.bookService(name: name, phone: phone, service: selectedService, date: selectedDate) { result in
            DispatchQueue.main.async {
                isSubmitting = false
                switch result {
                case .success(let response):
                    bookingMessage = response.message
                case .failure(let error):
                    // Handle error
                    bookingMessage = "Ошибка: \(error.localizedDescription)"
                }
            }
        }
    }
}


#Preview {
    BookingView()
}
import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    private init() {}
    
    func fetchFAQ(completion: @escaping (Result<[FAQ], Error>) -> Void) {
        guard let url = URL(string: "https://your-backend-url.com/api/faq") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                // Handle missing data
                return
            }
            
            do {
                let faqList = try JSONDecoder().decode([FAQ].self, from: data)
                completion(.success(faqList))
            } catch let decodingError {
                completion(.failure(decodingError))
            }
        }
        task.resume()
    }
}

struct FAQ: Decodable {
    let id: Int
    let question: String
    let answer: String
}
extension NetworkManager {
    func bookService(name: String, phone: String, service: String, date: Date, completion: @escaping (Result<BookingResponse, Error>) -> Void) {
        guard let url = URL(string: "https://your-backend-url.com/api/book") else {
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let bookingDetails = BookingDetails(name: name, phone: phone, service: service, date: date)
        
        do {
            let jsonData = try JSONEncoder().encode(bookingDetails)
            request.httpBody = jsonData
        } catch let encodingError {
            completion(.failure(encodingError))
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            
            guard let data = data else {
                // Handle missing data
                return
            }
            
            do {
                let bookingResponse = try JSONDecoder().decode(BookingResponse.self, from: data)
                completion(.success(bookingResponse))
            } catch let decodingError {
                completion(.failure(decodingError))
            }
        }
        task.resume()
    }
}

struct BookingDetails: Encodable {
    let name: String
    let phone: String
    let service: String
    let date: Date
}

struct BookingResponse: Decodable {
    let success: Bool
    let message: String
}
import SwiftUI




