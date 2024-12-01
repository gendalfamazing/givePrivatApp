// FavoritesView.swift

// FavoritesView.swift

import SwiftUI

struct FavoritesView: View {
    @EnvironmentObject var favoritesManager: FavoritesManager

    var body: some View {
        NavigationView {
            FavoritesUIKitView()
                .padding(.horizontal, 10)
                .cornerRadius(10)
                .background(Color.back)
                .environmentObject(favoritesManager)
                .environment(\.viewContext, .favorites)
                .navigationBarTitle("", displayMode: .inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        VStack {
                            Text("Избранное")
                                .font(.headline)
                                .foregroundColor(Color.toolBar)
                                .bold()
                            Text("«Часто используемые элементы»")
                                .font(.caption2)
                                .foregroundColor(Color.toolBar)
                        }
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            favoritesManager.favorites.removeAll()
                            favoritesManager.saveFavorites()
                        }) {
                            Image(systemName: "trash")
                                .foregroundColor(.red)
                        }
                    }
                }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .cornerRadius(10)
        .background(Color.back)
    }
}

// Дополнительные компоненты
enum ViewContext {
    case favorites
    case nonFavorites
    case other
}

struct ViewContextKey: EnvironmentKey {
    static let defaultValue: ViewContext = .other
}

extension EnvironmentValues {
    var viewContext: ViewContext {
        get { self[ViewContextKey.self] }
        set { self[ViewContextKey.self] = newValue }
    }
}

#Preview {
    FavoritesView()
}

class SharedState: ObservableObject {
    @Published var isTextExpanded3 = false
}

struct ViewFactory {
    static func view(for identifier: String) -> AnyView {
        switch identifier {
        case "GENEVA":
            return AnyView(Geneva())
        case "PESI":
            return AnyView(PESI())
        case "Приказы и постановления":
            return AnyView(PrikazyPostanovleniyaFavorites())
        case "МКБ-10":
            return AnyView(CodesMkb10Favorites())
        case "Шкалы и таблицы":
            return AnyView(ScalesTablesFavorites())
        case "Учебные материалы":
            return AnyView(StudMaterialsFavorites())
        case "Калькулятор Допамина":
            return AnyView(InfusionRateCalculatorViewFavorites())
        case "Акушерское пособие":
            return AnyView(AkusherskoePosobieFavorites())
        case "Атлас ЭКГ":
            return AnyView(AtlasECGFavorites())
        case "Поиск детских дозировок":
            return AnyView(FastChildDosesFavorites())
        case "Постановление №118 (детские протоколы)":
            return AnyView(Postanovlenie118ViewFavorites())
        case "Алгоритм 1. «Порядок оказания скорой (неотложной) медицинской помощи»":
            return AnyView(Prikaz1030Alg1ViewFavorites())
        case "Алгоритм 2. «Первичный осмотр пациента (ABCD)»":
            return AnyView(Prikaz1030Alg2ViewFavorites())
        case "Алгоритм 3. «Острая дыхательная недостаточность»":
            return AnyView(Prikaz1030Alg3ViewFavorites())
        case "Алгоритм 4. «Внезапная смерть, сердечно-легочная реанимация»":
            return AnyView(Prikaz1030Alg4ViewFavorites())
        case "Алгоритм 5. «Гиповолемический шок»":
            return AnyView(Prikaz1030Alg5ViewFavorites())
        case "Алгоритм 6. «Фибрилляция желудочков (ФЖ), желудочковая тахикардия (ЖТ) с острой сердечной недостаточностью»":
            return AnyView(Prikaz1030Alg6ViewFavorites())
        case "Алгоритм 7. «Асистолия»":
            return AnyView(Prikaz1030Alg7ViewFavorites())
        case "Алгоритм 8. «Электромеханическая диссоциация (нарушение насосной функции при сохранении электрической активности)»":
            return AnyView(Prikaz1030Alg8ViewFavorites())
        case "Алгоритм 9. «Постреанимационная поддержка»":
            return AnyView(Prikaz1030Alg9ViewFavorites())
        case "Алгоритм 10. «Пароксизмальная тахикардия с узким комплексом QRS»":
            return AnyView(Prikaz1030Alg10ViewFavorites())
        case "Алгоритм 11. «Пароксизмальная тахикардия с широким комплексом QRS»":
            return AnyView(Prikaz1030Alg11ViewFavorites())
        case "Алгоритм 12. «Желудочковая экстрасистолия (злокачественная)»":
            return AnyView(Prikaz1030Alg12ViewFavorites())
        case "Алгоритм 13. «Брадиаритмии (синусовая брадикардия, AV-блокада II степени, полная AV-блокада, синдром слабости синусового узла)»":
            return AnyView(Prikaz1030Alg13ViewFavorites())
        case "Алгоритм 14. «Пароксизмальная мерцательная аритмия»":
            return AnyView(Prikaz1030Alg14ViewFavorites())
        case "Алгоритм 15. «Острый коронарный синдром»":
            return AnyView(Prikaz1030Alg15ViewFavorites())
        case "Алгоритм 16. «Кардиогенный шок»":
            return AnyView(Prikaz1030Alg16ViewFavorites())
        case "Алгоритм 17. «Отек легких»":
            return AnyView(Prikaz1030Alg17ViewFavorites())
        case "Алгоритм 18. «Тромбоэмболия легочной артерии»":
            return AnyView(Prikaz1030Alg18ViewFavorites())
        case "Алгоритм 19. «Расслаивающая аневризма аорты»":
            return AnyView(Prikaz1030Alg19ViewFavorites())
        case "Алгоритм 20. «Острый тромбоз артерий и глубоких вен»":
            return AnyView(Prikaz1030Alg20ViewFavorites())
        case "Алгоритм 21. «Гипертонический криз»":
            return AnyView(Prikaz1030Alg21ViewFavorites())
        case "Алгоритм 22. «Обморок»":
            return AnyView(Prikaz1030Alg22ViewFavorites())
        case "Алгоритм 23. «Приступ бронхиальной астмы»":
            return AnyView(Prikaz1030Alg23ViewFavorites())
        case "Алгоритм 24. «Пневмония»":
            return AnyView(Prikaz1030Alg24ViewFavorites())
        case "Алгоритм 25. «Стеноз гортани»":
            return AnyView(Prikaz1030Alg25ViewFavorites())
        case "Алгоритм 26. «Обструкция дыхательных путей инородным телом»":
            return AnyView(Prikaz1030Alg26ViewFavorites())
        case "Алгоритм 27. «Кома неясного генеза»":
            return AnyView(Prikaz1030Alg27ViewFavorites())
        case "Алгоритм 28. «Комы при сахарном диабете»":
            return AnyView(Prikaz1030Alg28ViewFavorites())
        case "Алгоритм 29. «Судорожный синдром»":
            return AnyView(Prikaz1030Alg29ViewFavorites())
        case "Алгоритм 30. «Острое нарушение мозгового кровообращения»":
            return AnyView(Prikaz1030Alg30ViewFavorites())
        case "Алгоритм 31. «Гипертермия»":
            return AnyView(Prikaz1030Alg31ViewFavorites())
        case "Алгоритм 32. «Высокопатогенный грипп»":
            return AnyView(Prikaz1030Alg32ViewFavorites())
        case "Алгоритм 33. «Менингиальная инфекция»":
            return AnyView(Prikaz1030Alg33ViewFavorites())
        case "Алгоритм 34. «Острые кишечные инфекции»":
            return AnyView(Prikaz1030Alg34ViewFavorites())
        case "Алгоритм 35. «Острый инфекционный гепатит»":
            return AnyView(Prikaz1030Alg35ViewFavorites())
        case "Алгоритм 36. «Почечная колика»":
            return AnyView(Prikaz1030Alg36ViewFavorites())
        case "Алгоритм 37. «Носовое кровотечение»":
            return AnyView(Prikaz1030Alg37ViewFavorites())
        case "Алгоритм 38. «Острая хирургическая патология органов брюшной полости»":
            return AnyView(Prikaz1030Alg38ViewFavorites())
        case "Алгоритм 39. «Черепно-мозговая травма»":
            return AnyView(Prikaz1030Alg39ViewFavorites())
        case "Алгоритм 40. «Травма позвоночника»":
            return AnyView(Prikaz1030Alg40ViewFavorites())
        case "Алгоритм 41. «Травмы конечностей»":
            return AnyView(Prikaz1030Alg41ViewFavorites())
        case "Алгоритм 42. «Травмы груди»":
            return AnyView(Prikaz1030Alg42ViewFavorites())
        case "Алгоритм 43. «Травмы живота»":
            return AnyView(Prikaz1030Alg43ViewFavorites())
        case "Алгоритм 44. «Политравма»":
            return AnyView(Prikaz1030Alg44ViewFavorites())
        case "Алгоритм 45. «Ожоги»":
            return AnyView(Prikaz1030Alg45ViewFavorites())
        case "Алгоритм 46. «Тепловой удар»":
            return AnyView(Prikaz1030Alg46ViewFavorites())
        case "Алгоритм 47. «Гипотермия»":
            return AnyView(Prikaz1030Alg47ViewFavorites())
        case "Алгоритм 48. «Утопление»":
            return AnyView(Prikaz1030Alg48ViewFavorites())
        case "Алгоритм 49. «Отравление неизвестным ядом»":
            return AnyView(Prikaz1030Alg49ViewFavorites())
        case "Алгоритм 50. «Аллергическая реакция»":
            return AnyView(Prikaz1030Alg50ViewFavorites())
        case "Алгоритм 51. «Неотложные состояния в акушерстве и гинекологии»":
            return AnyView(Prikaz1030Alg51ViewFavorites())
        case "Алгоритм 52. «Острый реактивный психоз»":
            return AnyView(Prikaz1030Alg52ViewFavorites())
        case "Алгоритм 53. «Действия бригады СНМП при ДТП»":
            return AnyView(Prikaz1030Alg53ViewFavorites())
        case "Алгоритм 54. «Острое психотическое возбуждение»":
            return AnyView(Prikaz1030Alg54ViewFavorites())
        case "Алгоритм 55. «Суицидальное поведение»":
            return AnyView(Prikaz1030Alg55ViewFavorites())
        case "Алгоритм 56. «Вертеброгенный болевой синдром (боль в позвоночнике, иррадиация, тоническое напряжение мышц)»":
            return AnyView(Prikaz1030Alg56ViewFavorites())
        case "Алгоритм 57. «Мигрень»":
            return AnyView(Prikaz1030Alg57ViewFavorites())
        case "Алгоритм 58. «Длительное сдавление мягких тканей»":
            return AnyView(Prikaz1030Alg58ViewFavorites())
        case "Алгоритм 59. «Отморожения»":
            return AnyView(Prikaz1030Alg59ViewFavorites())
        case "Алгоритм 60. «Поражение электрическим током»":
            return AnyView(Prikaz1030Alg60ViewFavorites())
        case "Алгоритм 61. «Странгуляционная асфиксия»":
            return AnyView(Prikaz1030Alg61ViewFavorites())
        case "Алгоритм 62. «Острые психотические расстройства при употреблении психоактивных веществ (ПАВ)»":
            return AnyView(Prikaz1030Alg62ViewFavorites())
        case "Алгоритм 63. «Побочные эффекты и осложнения психофармакотерапии»":
            return AnyView(Prikaz1030Alg63ViewFavorites())
        case "Алгоритм 64. «Острые желудочно-кишечные кровотечения»":
            return AnyView(Prikaz1030Alg64ViewFavorites())
        case "Алгоритм 65. «Кровотечение в послеродовом периоде»":
            return AnyView(Prikaz1030Alg65ViewFavorites())
        case "Алгоритм 66. «Травма половых органов (женщины)»":
            return AnyView(Prikaz1030Alg66ViewFavorites())
        case "Алгоритм 67. «Роды»":
            return AnyView(Prikaz1030Alg67ViewFavorites())
        case "Алгоритм 68. «Заглоточный абсцесс»":
            return AnyView(Prikaz1030Alg68ViewFavorites())
        case "Алгоритм 69. «Кровотечение из глотки»":
            return AnyView(Prikaz1030Alg69ViewFavorites())
        case "Алгоритм 70. «Перелом костей носа и околоносовых пазух»":
            return AnyView(Prikaz1030Alg70ViewFavorites())
        case "Алгоритм 71. «Кровотечение из уха»":
            return AnyView(Prikaz1030Alg71ViewFavorites())
        case "Алгоритм 72. «Ожоги и травмы глаза, века, конъюнктивы»":
            return AnyView(Prikaz1030Alg72ViewFavorites())
        case "Алгоритм 73. «Заболевания глаза, века»":
            return AnyView(Prikaz1030Alg73ViewFavorites())
        case "Алгоритм 74. «Инородное тело верхних дыхательных путей, уха»":
            return AnyView(Prikaz1030Alg74ViewFavorites())
        case "Алгоритм 75. «Алкогольный абстинентный синдром»":
            return AnyView(Prikaz1030Alg75ViewFavorites())
        case "Алгоритм 76. «Острая задержка мочи»":
            return AnyView(Prikaz1030Alg76ViewFavorites())
        case "Алгоритм 77. «Респираторная поддержка»":
            return AnyView(Prikaz1030Alg77ViewFavorites())
        case "Алгоритм 78. «Алкогольная интоксикация»":
            return AnyView(Prikaz1030Alg78ViewFavorites())
        // Добавьте остальные представления
        default:
            return AnyView(Text("Неизвестное представление"))
        }
    }
}


import SwiftUI

// FavoritesUIKitView.swift


struct FavoritesUIKitView: UIViewControllerRepresentable {
    @EnvironmentObject var favoritesManager: FavoritesManager
    @Environment(\.viewContext) var context: ViewContext

    func makeUIViewController(context: Context) -> FavoritesViewController {
        let viewController = FavoritesViewController()
        viewController.favoritesManager = favoritesManager
        viewController.viewContext = self.context
        return viewController
    }

    func updateUIViewController(_ uiViewController: FavoritesViewController, context: Context) {
        uiViewController.favoritesManager = favoritesManager
        uiViewController.viewContext = self.context
        uiViewController.tableView.reloadData()
    }
}

import UIKit
import SwiftUI


// FavoritesViewController.swift


class FavoritesViewController: UIViewController {
    var favoritesManager: FavoritesManager!
    var viewContext: ViewContext = .other
    var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        setupNavigationBar()

        // Observe content size change notifications
        NotificationCenter.default.addObserver(self, selector: #selector(contentSizeDidChange), name: .didUpdateContentSize, object: nil)
    }

    @objc private func contentSizeDidChange() {
        DispatchQueue.main.async {
            self.tableView.beginUpdates()
            self.tableView.endUpdates()
        }
    }

    deinit {
        NotificationCenter.default.removeObserver(self)
    }

    private func setupTableView() {
        tableView = UITableView(frame: view.bounds)
        tableView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        tableView.register(FavoriteCell.self, forCellReuseIdentifier: "FavoriteCell")
        tableView.dataSource = self
        tableView.delegate = self

        // Включаем возможность перетаскивания
        tableView.dragInteractionEnabled = true
        tableView.dragDelegate = self
        tableView.dropDelegate = self

        // Отключаем разделители
        tableView.separatorStyle = .none

        // Настраиваем автоматическое определение высоты ячеек
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100

        view.addSubview(tableView)
    }

    private func setupNavigationBar() {
        navigationItem.title = "Избранное"
        navigationItem.rightBarButtonItem = editButtonItem
    }

    override func setEditing(_ editing: Bool, animated: Bool) {
        super.setEditing(editing, animated: animated)
        tableView.setEditing(editing, animated: animated)
    }

    
}

// UITableViewDataSource и UITableViewDelegate
extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK: - Data Source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return favoritesManager.favorites.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(withIdentifier: "FavoriteCell", for: indexPath) as? FavoriteCell else {
            return UITableViewCell()
        }

        let item = favoritesManager.favorites[indexPath.row]
        cell.configure(with: item, viewContext: viewContext)
        cell.delegate = self
        return cell
    }

    // MARK: - Editing

    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }

    // Удаление элемента
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,
                   forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            favoritesManager.favorites.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            favoritesManager.saveFavorites()
        }
    }
}

// UITableViewDragDelegate и UITableViewDropDelegate
extension FavoritesViewController: UITableViewDragDelegate, UITableViewDropDelegate {
    // MARK: - UITableViewDragDelegate

    func tableView(_ tableView: UITableView, itemsForBeginning session: UIDragSession, at indexPath: IndexPath) -> [UIDragItem] {
            let item = favoritesManager.favorites[indexPath.row]
            let itemProvider = NSItemProvider(object: item.id.uuidString as NSString)
            let dragItem = UIDragItem(itemProvider: itemProvider)
            dragItem.localObject = item
            return [dragItem]
        }

    
    func tableView(_ tableView: UITableView, dragPreviewParametersForRowAt indexPath: IndexPath) -> UIDragPreviewParameters? {
            let cell = tableView.cellForRow(at: indexPath)

            let parameters = UIDragPreviewParameters()
            // Устанавливаем закруглённые углы
            parameters.visiblePath = UIBezierPath(roundedRect: cell?.bounds ?? CGRect.zero, cornerRadius: 10)
            return parameters
        }
    // MARK: - UITableViewDropDelegate

    func tableView(_ tableView: UITableView, canHandle session: UIDropSession) -> Bool {
        // Разрешаем только внутренние перетаскивания
        return session.localDragSession != nil
    }

    func tableView(_ tableView: UITableView, dropSessionDidUpdate session: UIDropSession,
                   withDestinationIndexPath destinationIndexPath: IndexPath?) -> UITableViewDropProposal {

        if tableView.hasActiveDrag {
            // Разрешаем перемещение внутри таблицы
            return UITableViewDropProposal(operation: .move, intent: .insertAtDestinationIndexPath)
        } else {
            // Отклоняем внешние дропы
            return UITableViewDropProposal(operation: .forbidden)
        }
    }

    func tableView(_ tableView: UITableView,
                   performDropWith coordinator: UITableViewDropCoordinator) {
        guard coordinator.session.localDragSession != nil else {
            // Не принимаем дропы из других приложений
            return
        }

        let destinationIndexPath: IndexPath
        if let indexPath = coordinator.destinationIndexPath {
            destinationIndexPath = indexPath
        } else {
            // Если нет destinationIndexPath, дропаем в конец таблицы
            let row = tableView.numberOfRows(inSection: 0)
            destinationIndexPath = IndexPath(row: row, section: 0)
        }

        reorderItems(coordinator: coordinator,
                     destinationIndexPath: destinationIndexPath,
                     tableView: tableView)
    }

    private func reorderItems(coordinator: UITableViewDropCoordinator,
                              destinationIndexPath: IndexPath,
                              tableView: UITableView) {

        for item in coordinator.items {
            if let sourceIndexPath = item.sourceIndexPath,
               let favoriteItem = item.dragItem.localObject as? FavoriteItem {

                tableView.performBatchUpdates({
                    // Удаляем элемент из старой позиции
                    favoritesManager.favorites.remove(at: sourceIndexPath.row)
                    // Вставляем элемент в новую позицию
                    favoritesManager.favorites.insert(favoriteItem, at: destinationIndexPath.row)

                    // Перемещаем строку в таблице
                    tableView.moveRow(at: sourceIndexPath, to: destinationIndexPath)
                }, completion: nil)

                coordinator.drop(item.dragItem, toRowAt: destinationIndexPath)
            }
        }

        // Сохраняем изменения
        favoritesManager.saveFavorites()
    }
}

// Реализация FavoriteCellDelegate
extension FavoritesViewController: FavoriteCellDelegate {
    func didUpdateContentSize() {
        DispatchQueue.main.async {
            self.tableView.beginUpdates()
            self.tableView.endUpdates()
        }
    }
}
// FavoriteCell.swift

import UIKit
import SwiftUI

protocol FavoriteCellDelegate: AnyObject {
    func didUpdateContentSize()
}

class FavoriteCell: UITableViewCell {
    private var hostingController: UIHostingController<AnyView>?
    weak var delegate: FavoriteCellDelegate?

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.selectionStyle = .none
        self.backgroundColor = .back

        // Устанавливаем закруглённые углы на contentView
        self.contentView.layer.cornerRadius = 10
        self.contentView.layer.masksToBounds = true

        // Устанавливаем цвет фона
        self.contentView.backgroundColor = UIColor.clear

        // Включаем взаимодействие с пользователем
        self.contentView.isUserInteractionEnabled = true
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with item: FavoriteItem, viewContext: ViewContext) {
        // Удаляем предыдущий hostingController
        if let hostingController = hostingController {
            hostingController.view.removeFromSuperview()
            self.hostingController = nil
        }

        // Создаём SwiftUI представление
        let swiftUIView = ViewFactory.view(for: item.viewIdentifier)
            .environment(\.viewContext, viewContext)
            .onPreferenceChange(ContentSizePreferenceKey.self) { [weak self] _ in
                self?.delegate?.didUpdateContentSize()
            }

        // Встраиваем SwiftUI представление в hostingController
        let controller = UIHostingController(rootView: AnyView(swiftUIView))
        controller.view.translatesAutoresizingMaskIntoConstraints = false
        controller.view.backgroundColor = .clear

        // Добавляем представление hostingController в contentView ячейки
        self.contentView.addSubview(controller.view)
        NSLayoutConstraint.activate([
            controller.view.topAnchor.constraint(equalTo: contentView.topAnchor),
            controller.view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            controller.view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            controller.view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
        ])

        // Убеждаемся, что взаимодействие включено
        controller.view.isUserInteractionEnabled = true

        // Применяем закруглённые углы к представлению hostingController
        controller.view.layer.cornerRadius = 10
        controller.view.layer.masksToBounds = true

        self.hostingController = controller
    }

    override func sizeThatFits(_ size: CGSize) -> CGSize {
        let fittingSize = CGSize(width: size.width, height: UIView.layoutFittingCompressedSize.height)
        let size = contentView.systemLayoutSizeFitting(fittingSize)
        return size
    }
}

// ContentSizePreferenceKey.swift

import SwiftUI

struct ContentSizePreferenceKey: PreferenceKey {
    static var defaultValue: CGSize = .zero

    static func reduce(value: inout CGSize, nextValue: () -> CGSize) {
        let next = nextValue()
        value = CGSize(width: max(value.width, next.width), height: max(value.height, next.height))
    }
}

extension Notification.Name {
    static let didUpdateContentSize = Notification.Name("didUpdateContentSize")
}
