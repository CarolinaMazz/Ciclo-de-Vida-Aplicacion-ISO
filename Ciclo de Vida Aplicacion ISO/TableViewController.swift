//
//  TableViewController.swift
//  Ciclo de Vida Aplicacion ISO
//
//  Created by alumno on 9/02/17.
//  Copyright © 2017 william. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //para saber la seccion y la vista en la que se selecciona en la lista
        let seccion = indexPath.section
        let fila = indexPath.row
        
        var alertControler:UIAlertController
        
        
        if seccion==0{
            
            print("Alert")
            switch fila {
            case 0:
                alertControler=UIAlertController(title: "Alert", message: "Alerta Simple", preferredStyle: UIAlertControllerStyle.alert)
                self.present(alertControler, animated: true, completion: {})
                print("Simple")
            case 1:
                //definimos la alerta que se va a mostrar definimos un controler
                alertControler=UIAlertController(title: "Alert", message: "Alerta OK", preferredStyle: UIAlertControllerStyle.alert)
                //creamos la accion
                let accionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    print("Ok")})
                //asignamos la accion y motramos
                alertControler.addAction(accionOK)
                self.present(alertControler, animated: true, completion: {})
            case 2:
                //definimos la alerta que se va a mostrar definimos un controler
                alertControler=UIAlertController(title: "Alert", message: "Alerta Acciones", preferredStyle: UIAlertControllerStyle.alert)
                //creamos la accion
                let accionAceptar = UIAlertAction(title: "Aceptar", style: UIAlertActionStyle.default, handler: { (action) in
                    print("aceptar")})
                let accionCancelar = UIAlertAction(title: "Cancelar", style: UIAlertActionStyle.cancel, handler: { (action) in
                    print("Cancelar")})
                let accionEliminar = UIAlertAction(title: "Eliminar", style: UIAlertActionStyle.default, handler: { (action) in})
                //asignamos la accion y motramos
                alertControler.addAction(accionAceptar)
                alertControler.addAction(accionCancelar)
                alertControler.addAction(accionEliminar)
                //mostramos el alert creado
                self.present(alertControler, animated: true, completion: {print("Muestra alerta con acciones")})
                print("Acciones")
            default:
                //definimos la alerta que se va a mostrar definimos un controler
                alertControler=UIAlertController(title: "Alert", message: "Alerta con Texto", preferredStyle: UIAlertControllerStyle.alert)
                //agregar campo de texto en un alert
                alertControler.addTextField(configurationHandler: { (textoAlerta) in
                    //permite configurar el texto que se va a mostrar
                    textoAlerta.placeholder = "ingrese texto"
                })
                //creamos la accion
                let accionOK = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: { (action) in
                    print("aceptar")})
                //asignamos la accion y motramos
                alertControler.addAction(accionOK)
                //mostramos el alert creado se presenta
                self.present(alertControler, animated: true, completion: {})
                print("Texto")
            }
        }else{
            print("Action Sheets")
            switch fila {
            case 0:
                print("simple")
            case 1:
                print("con accion")
            default:
                print("cancelar")
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    /*override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
