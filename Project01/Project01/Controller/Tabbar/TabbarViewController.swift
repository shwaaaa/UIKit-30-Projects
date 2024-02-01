import UIKit

class TabbarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let productsVC = UINavigationController(rootViewController: ProductViewController())
        productsVC.tabBarItem.title = "Products"
        productsVC.tabBarItem.image = UIImage(systemName: "shippingbox")
        productsVC.tabBarItem.selectedImage = UIImage(systemName: "shippingbox.fill")
        
        let usVC = UINavigationController(rootViewController: UsViewController())
        usVC.tabBarItem.title = "Us"
        usVC.tabBarItem.image = UIImage(systemName: "person.crop.circle")
        usVC.tabBarItem.selectedImage = UIImage(systemName: "person.crop.circle.fill")
        
        viewControllers = [productsVC, usVC]
    }
}

