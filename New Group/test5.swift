import UIKit

class CustomUICollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = String(describing: CustomUICollectionViewCell.self)

    private let dayLabel = UILabel()

    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(dayLabel)
        dayLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            dayLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            dayLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with day: String) {
        dayLabel.text = day
    }
}

import UIKit

class CalendarCollectionViewController: UICollectionViewController {
    private let itemsPerRow: CGFloat = 7
    private let sectionInsets = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
    private var days: [String] = []

    init() {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        super.init(collectionViewLayout: layout)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.register(CustomUICollectionViewCell.self, forCellWithReuseIdentifier: CustomUICollectionViewCell.reuseIdentifier)
        generateDays()
    }

    private func generateDays() {
        let calendar = Calendar.current
        let currentDate = Date()
        let range = calendar.range(of: .day, in: .month, for: currentDate)!

        for day in range {
            days.append(String(day))
        }
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CustomUICollectionViewCell.reuseIdentifier, for: indexPath) as? CustomUICollectionViewCell else {
            fatalError("Unable to dequeue CustomUICollectionViewCell")
        }
        cell.configure(with: days[indexPath.row])
        return cell
    }
}

extension CalendarCollectionViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow

        return CGSize(width: widthPerItem, height: widthPerItem)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
}

import SwiftUI

struct CalendarCollectionViewRepresentable: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> CalendarCollectionViewController {
        return CalendarCollectionViewController()
    }

    func updateUIViewController(_ uiViewController: CalendarCollectionViewController, context: Context) {
        // Update the controller if necessary
    }
}

import SwiftUI

struct ContentView11: View {
    var body: some View {
        NavigationView {
            VStack {
                CalendarCollectionViewRepresentable()
                    .navigationTitle("Календарь")
            }
        }
    }
}

#Preview {
    ContentView11()
}

