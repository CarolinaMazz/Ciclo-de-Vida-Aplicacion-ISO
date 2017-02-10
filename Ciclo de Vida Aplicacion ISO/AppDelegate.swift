//
//  AppDelegate.swift
//  Ciclo de Vida Aplicacion ISO
//
//  Created by alumno on 9/02/17.
//  Copyright © 2017 william. All rights reserved.
//se encarga de lanzar y cargar toda la aplicacion

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //al levantar la aplicacion es el primer codigo que se ejecuta punto inicial de la aplicacion
        print("Inicio Aplicacion")
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        //cuando la aplicACION VA A PASAR A ESTADO INACTIVO DE ACTIVO
        print("APLICACION PASA A INACTIVO")
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        // CUANDO LA APLICACION SE ESTA EJECUTANDO EN Background O PASA A Background
        print("APLICACION PASA A BACKGROUND")
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("APLICACION PASA A Foreground")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        print("APLICACION PASA ACTIVA")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        print("APLICACION TERMINA")
    }


}

