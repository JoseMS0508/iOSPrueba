//
//  ViewController.swift
//  PracticaUD1
//
//  Created by Jose Maya Salas on 3/10/23.
//

import UIKit

class ViewController: UIViewController {

        @IBOutlet weak var label: UILabel!
        @IBOutlet weak var boton1: UIButton!
        @IBOutlet weak var boton2: UIButton!
        @IBOutlet weak var boton3: UIButton!
        @IBOutlet weak var sliderTamañoEtiqueta: UISlider!
        @IBOutlet weak var textFieldTextoUsuario: UITextField!
        let coloresTexto: [String: UIColor] = [
            "Rojo": .red,
            "Verde": .green,
            "Azul": .blue,
            "Amarillo": .yellow,
            "Naranja": .orange,
            "Púrpura": .purple,
            "Marrón": .brown,
            "Negro": .black,
            "Gris": .gray,
            "Magenta": .magenta
        ]
        var nombresDeColores = ["Rojo", "Verde", "Azul", "Amarillo", "Naranja", "Púrpura", "Marrón", "Negro", "Gris", "Magenta"]
    
            
        override func viewDidLoad() {
            super.viewDidLoad()
            nombresDeColores.shuffle()
            pintaColoresBotones()
            poneTextoABotones()
        }
    
        func pintaColoresBotones() {
            boton1.backgroundColor = coloresTexto[nombresDeColores[0]]
            boton2.backgroundColor = coloresTexto[nombresDeColores[1]]
            boton3.backgroundColor = coloresTexto[nombresDeColores[2]]
        }
    
        func poneTextoABotones() {
            boton1.setTitle(nombresDeColores[0], for: .normal)
            boton2.setTitle(nombresDeColores[1], for: .normal)
            boton3.setTitle(nombresDeColores[2], for: .normal)
        }
       
       @IBAction func cambiaAColor1(_ sender: UIButton) {
           label.textColor = boton1.backgroundColor
       }
       
       @IBAction func cambiaAColor2(_ sender: UIButton) {
           label.textColor = boton2.backgroundColor
       }
       
       @IBAction func cambiaAColor3(_ sender: UIButton) {
           label.textColor = boton3.backgroundColor
       }
       
       @IBAction func cambiaTamañoFuente(_ sender: UISlider) {
           label.font = UIFont.systemFont(ofSize: CGFloat(sliderTamañoEtiqueta.value))
       }
       
       @IBAction func cambiaTextoMostrado(_ sender: UITextField) {
           label.text = sender.text
       }
    
}

