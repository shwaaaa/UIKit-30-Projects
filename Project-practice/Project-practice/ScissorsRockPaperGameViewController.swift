import UIKit

class ScissorsRockPaperGameViewController: UIViewController {
    
    let gameImageNameData = ["rock", "scissor", "paper"]
    
    lazy var playStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var computerGameImagView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rock"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var myGameImagView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "rock"))
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var inputStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var scissorsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("가위", for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 20
        return button
    }()
    
    lazy var rockButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("바위", for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 20
        return button
    }()
    
    lazy var paperButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("보", for: .normal)
        button.backgroundColor = .purple
        button.layer.cornerRadius = 20
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        view.addSubview(playStackView)
        playStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        playStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        playStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        playStackView.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        playStackView.addArrangedSubview(computerGameImagView)
        playStackView.addArrangedSubview(myGameImagView)
        
        view.addSubview(inputStackView)
        inputStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        inputStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        inputStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100).isActive = true
        inputStackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        inputStackView.addArrangedSubview(scissorsButton)
        inputStackView.addArrangedSubview(rockButton)
        inputStackView.addArrangedSubview(paperButton)
        
        scissorsButton.addTarget(self, action: #selector(didTapChangeGameImageButton), for: .touchUpInside)
        rockButton.addTarget(self, action: #selector(didTapChangeGameImageButton2), for: .touchUpInside)
        paperButton.addTarget(self, action: #selector(didTapChangeGameImageButton3), for: .touchUpInside)
    }
    
    @objc func didTapChangeGameImageButton() {
        myGameImagView.image = UIImage(named: "scissor")
        let randomInput = gameImageNameData.randomElement()!
        computerGameImagView.image = UIImage(named: randomInput)
//        gameImageNameData.randomElement()
    }
    
    @objc func didTapChangeGameImageButton2() {
        myGameImagView.image = UIImage(named: "rock")
        let randomInput = gameImageNameData.randomElement()!
        computerGameImagView.image = UIImage(named: randomInput)
    }
    
    @objc func didTapChangeGameImageButton3() {
        myGameImagView.image = UIImage(named: "paper")
        let randomInput = gameImageNameData.randomElement()!
        computerGameImagView.image = UIImage(named: randomInput)
    }
}
