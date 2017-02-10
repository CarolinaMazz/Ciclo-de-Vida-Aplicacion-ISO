//
//  ViewController.swift
//  Ciclo de Vida Aplicacion ISO
//
//  Created by alumno on 9/02/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numero=0
    @IBOutlet weak var lblNumero: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // se ejecuta solo al cargarse la vista de la app
        print("viewDidLoad")
        lblNumero.text="\(numero)"
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //luego de cargar la aplicacion
        print("viewDidAppear")
        numero=numero+1
        lblNumero.text="\(numero)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        //la vista ya aperece completamente cargada
        print("viewWillAppear")
        numero=numero+1
        lblNumero.text="\(numero)"
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        //antes de desaparecer la vista se ejecuta el codigo dentro de esta funcion
        numero=numero+1
        lblNumero.text="\(numero)"
        print("viewDidDisappear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        //cuando ya salio de la vista
        numero=numero+1
        lblNumero.text="\(numero)"
        print("viewWillDisappear")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

