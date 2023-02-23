//
//  ViewController.swift
//  Calculator
//
//  Created by Mallonee, Sawyer - Student on 1/24/23.
//

import UIKit



class ViewController: UIViewController {
  //MARK: Declare Variables and Outlets
    var secondNumber = 0.0
    var firstNumber = 0.0
    var numberResult = 0.0
    
    var varOperator = "+"
    
    @IBOutlet weak var Output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
  //MARK: Numbers
    
    @IBAction func number0(_ sender: UIButton) {
        Output.text = Output.text! + "0"
        
    }
    
    @IBAction func number1(_ sender: UIButton) {
        Output.text = Output.text! + "1"
        
    }
    
    @IBAction func number2(_ sender: UIButton) {
        Output.text = Output.text! + "2"
    }
    
    @IBAction func number3(_ sender: UIButton) {
        Output.text = Output.text! + "3"
    }
    
    @IBAction func number4(_ sender: UIButton) {
        Output.text = Output.text! + "4"
    }
    
    @IBAction func number5(_ sender: UIButton) {
        Output.text = Output.text! + "5"
    }
    
    @IBAction func number6(_ sender: UIButton) {
        Output.text = Output.text! + "6"
    }
    
    @IBAction func number7(_ sender: UIButton) {
        Output.text = Output.text! + "7"
    }
    
    @IBAction func number8(_ sender: UIButton) {
        Output.text = Output.text! + "8"
    }
    
    @IBAction func number9(_ sender: UIButton) {
        Output.text = Output.text! + "9"
    }
    
 //MARK: Algorithms
    
    @IBAction func buttonClear(_ sender: UIButton) {
        clearText()
    }
    
    @IBAction func buttonAddition(_ sender: UIButton) {
        varOperator = "+"
        firstNumber = Double(Output.text!) ?? 0
        clearText()
    }
    
    @IBAction func buttonSubtraction(_ sender: UIButton) {
        varOperator = "-"
        firstNumber = Double(Output.text!) ?? 0
        clearText()
    }
    
    @IBAction func buttonMultiplication(_ sender: UIButton) {
        varOperator = "*"
        firstNumber = Double(Output.text!) ?? 0
        clearText()
    }
    
    @IBAction func buttonDivision(_ sender: UIButton) {
        varOperator = "/"
        firstNumber = Double(Output.text!) ?? 0
        clearText()
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        secondNumber = Double(Output.text!) ?? 0
        
        switch varOperator {
        case "+":
            numberResult = firstNumber + secondNumber
            Output.text = String(numberResult)
        case "-":
            numberResult = firstNumber-secondNumber
            Output.text = String(numberResult)
        case "*":
            numberResult = firstNumber*secondNumber
            Output.text = String(numberResult)
        case "/":
            numberResult = firstNumber/secondNumber
            Output.text = String(numberResult)
        default:
            Output.text = "ERROR"
        }
    }
    
    func clearText(){
        Output.text = ""
    }
}
