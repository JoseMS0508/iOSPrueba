//
//  ViewController.swift
//  PracticaUD1
//
//  Created by Jose Maya Salas on 3/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var botonAzul: UIButton!
    @IBOutlet weak var botonRojo: UIButton!
    @IBOutlet weak var botonVerde: UIButton!
    @IBOutlet weak var sliderTamañoEtiqueta: UISlider!
    @IBOutlet weak var textFieldTextoUsuario: UITextField!
    
    func randomNumber() -> Float {
           return Float.random(in: 0.0...1.0)
       }
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           botonAzul.backgroundColor = UIColor(red: CGFloat(randomNumber()), green: CGFloat(randomNumber()), blue: CGFloat(randomNumber()), alpha: CGFloat(randomNumber()))
           botonRojo.backgroundColor = UIColor(red: CGFloat(randomNumber()), green: CGFloat(randomNumber()), blue: CGFloat(randomNumber()), alpha: CGFloat(randomNumber()))
           botonVerde.backgroundColor = UIColor(red: CGFloat(randomNumber()), green: CGFloat(randomNumber()), blue: CGFloat(randomNumber()), alpha: CGFloat(randomNumber()))
           
       }
       
       @IBAction func botonColorAzul(_ sender: UIButton) {
           label.textColor = botonAzul.backgroundColor
       }
       
       @IBAction func botonColorRojo(_ sender: UIButton) {
           label.textColor = botonRojo.backgroundColor
       }
       
       @IBAction func botonColorVerde(_ sender: UIButton) {
           label.textColor = botonVerde.backgroundColor
       }
       
       @IBAction func cambiaTamañoFuente(_ sender: UISlider) {
           label.font = UIFont.systemFont(ofSize: CGFloat(sliderTamañoEtiqueta.value))
       }
       
       @IBAction func cambiaTextoMostrado(_ sender: UITextField) {
           label.text = sender.text
       }
    
}

