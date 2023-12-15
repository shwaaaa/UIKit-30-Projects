//
//  SceneDelegate.swift
//  Project-practice
//
//  Created by 이승화 on 12/15/23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    //화면이 연결 되기 전
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: windowScene)
        
//        let mainViewController = ViewController()
        let mainViewController = SecondAppMainViewController()
        
        window?.rootViewController = mainViewController
        window?.makeKeyAndVisible()
        
//        //윈도우 씬을 가져온다
//        guard let windowScene = (scene as? UIWindowScene) else { return }
//        
//        //윈도우의 크기 설정
//        window = UIWindow(frame: UIScreen.main.bounds)
//        
//        //뷰컨트롤러 인스턴스 가져오기
//        let vc =  ViewController()
//        
//        //네비게이션 컨트롤러 설정
//        let navVC = UINavigationController(rootViewController: vc)
//        
//        //뿌리 뷰컨트롤러
//        window?.rootViewController = navVC
//        
//        //설정한 윈도우를 보이게 끔 설정
//        window?.windowScene = windowScene
    }

    func sceneDidDisconnect(_ scene: UIScene) {

    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        
    }


}

