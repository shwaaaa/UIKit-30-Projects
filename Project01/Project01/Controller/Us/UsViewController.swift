import UIKit

class UsViewController: UIViewController {
    let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    let title1: UILabel = {
        let title1 = UILabel()
        title1.text = "About Us"
        title1.font = .systemFont(ofSize: 20, weight: .black)
        title1.textColor = .black
        return title1
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(scrollView)
        
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        scrollView.addSubview(title1)
        
//        title1.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor).isActive = true
//        title1.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 30).isActive = true
    }
}
