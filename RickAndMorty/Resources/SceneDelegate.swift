//
//  SceneDelegate.swift
//  RickAndMorty
//
//  Created by Mohammad Bitar on 12/26/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let vc = RMTabBarViewController()
        
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = vc
        window.makeKeyAndVisible()
        self.window = window
    }
}

