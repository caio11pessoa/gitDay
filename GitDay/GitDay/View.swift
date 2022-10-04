import UIKit

class View: UIView {
    private let nameLabel: UILabel = UILabel()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Title Button", for: .normal)
        button.setTitleColor(.label, for: .normal)
        button.backgroundColor = .systemGray
        button.layer.cornerRadius = 8
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "subtitle"
        label.textColor = .label
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private let decriptionLabel: UILabel = {
        let label = UILabel()
        label.text = "description"
        label.textColor = .systemCyan
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override func layoutSubviews() {
        
        super.layoutSubviews()
        backgroundColor = .systemBackground
        
        configView()
        setupConstraints()
        nameLabel.text = "Conflito iminente"
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        addSubview(nameLabel)

        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 60),
            nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 30)
        ])
    }
    
    private func configView() {
        addSubview(button)
        addSubview(subtitleLabel)
        addSubview(decriptionLabel)
    }

    private func setupConstraints() {
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 48)
        ])
        
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 16),
            subtitleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            decriptionLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 16),
            decriptionLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor)
        ])
    }
}
