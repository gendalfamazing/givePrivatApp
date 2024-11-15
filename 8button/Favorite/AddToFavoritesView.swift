// AddToFavoritesView.swift

import SwiftUI

struct AddToFavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @State private var selectedSectionName: String = ""
    @State private var newSectionName: String = ""
    @State private var itemName: String
    @State private var showAlert = false
    @Binding var isPresented: Bool

    var defaultItemName: String
    var destinationIdentifier: String

    // Явно объявляем инициализатор
    init(isPresented: Binding<Bool>, defaultItemName: String, destinationIdentifier: String, itemName: String) {
        self._isPresented = isPresented
        self.defaultItemName = defaultItemName
        self.destinationIdentifier = destinationIdentifier
        self._itemName = State(initialValue: itemName)
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Название элемента")) {
                    HStack {
                        TextField("Название элемента", text: $itemName)
                        Button(action: {
                            // Действие по нажатию на иконку редактирования
                        }) {
                            Image(systemName: "pencil")
                        }
                    }
                }

                Section(header: Text("Раздел")) {
                    Picker("Выберите раздел", selection: $selectedSectionName) {
                        ForEach(favoritesManager.sections, id: \.name) { section in
                            Text(section.name).tag(section.name)
                        }
                        Text("Новый раздел").tag("Новый раздел")
                    }
                    if selectedSectionName == "Новый раздел" {
                        TextField("Введите название нового раздела", text: $newSectionName)
                    }
                }
            }
            .navigationBarTitle("Добавить в избранное", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Отмена") {
                    isPresented = false
                },
                trailing: Button("Сохранить") {
                    let sectionName = selectedSectionName == "Новый раздел" ? newSectionName : selectedSectionName
                    guard !sectionName.isEmpty else { return }
                    let newItem = FavoriteItem(name: itemName, destinationIdentifier: destinationIdentifier)
                    let success = favoritesManager.addItem(newItem, toSection: sectionName)
                    if success {
                        isPresented = false
                    } else {
                        // Показать уведомление, что элемент уже существует
                        showAlert = true
                    }
                }
            )
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Ошибка"), message: Text("Этот элемент уже добавлен в этот раздел"), dismissButton: .default(Text("OK")))
            }
        }
    }
}

// AddTextBlockToFavoritesView.swift



struct AddTextBlockToFavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Binding var isPresented: Bool
    @State private var itemName: String
    @State private var showAlert = false

    var defaultItemName: String
    var contentKey: String

    init(isPresented: Binding<Bool>, defaultItemName: String, contentKey: String) {
        self._isPresented = isPresented
        self.defaultItemName = defaultItemName
        self.contentKey = contentKey
        self._itemName = State(initialValue: defaultItemName)
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Название элемента")) {
                    HStack {
                        TextField("Название элемента", text: $itemName)
                        Button(action: {
                            // Действие по нажатию на иконку редактирования
                        }) {
                            Image(systemName: "pencil")
                        }
                    }
                }
            }
            .navigationBarTitle("Добавить в избранное", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Отмена") {
                    isPresented = false
                },
                trailing: Button("Сохранить") {
                    let newTextBlock = FavoriteTextBlock(title: itemName, contentKey: contentKey)
                    let success = favoritesManager.addTextBlock(newTextBlock)
                    if success {
                        isPresented = false
                    } else {
                        showAlert = true
                    }
                }
            )
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Ошибка"), message: Text("Этот элемент уже добавлен в избранное"), dismissButton: .default(Text("OK")))
            }
        }
    }
}
