//
//  ViewController.swift
//  Calculator
//
//  Created by student on 2/24/20.
//  Copyright © 2020 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var multipleButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var equalButton: UIButton!
    @IBOutlet weak var desimalPointButton: UIButton!
    
    @IBOutlet weak var deletOneByOne: UIButton!
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func sevenButtonClick(_ sender: UIButton) {
          let str=label.text!
               if !(str.last=="="){
                addSymbol(symbol: sevenButton.titleLabel!.text!)
        }
    }
    
    
    @IBAction func clearLabel(_ sender: UIButton) {
        label.text=""
    }
    
    
    @IBAction func deleteTextLabelOneByOne(_ sender: UIButton) {
        var textLabel=label.text!
        if textLabel.count>0 {
            textLabel.remove(at: textLabel.index(before: textLabel.endIndex))
                   print("textLabel=\(textLabel)")
                   label.text=textLabel
        }
       
          }
    
     
    
    
    @IBAction func eightButtonClick(_ sender: UIButton) {
        let str=label.text!
        if !(str.last=="="){
            addSymbol(symbol: eightButton.titleLabel!.text!)
    }
    }
    
    
    @IBAction func nineButtonClick(_ sender: UIButton) {
                let str=label.text!
         if !(str.last=="="){
            addSymbol(symbol: nineButton.titleLabel!.text!)
        }
    }
    
    
    @IBAction func fourButtonClick(_ sender: UIButton) {  let str=label.text!
               if !(str.last=="="){
                addSymbol(symbol: fourButton.titleLabel!.text!)
        }
    }
    
    @IBAction func fiveButtonClick(_ sender: UIButton) {
          let str=label.text!
               if !(str.last=="="){
                addSymbol(symbol: fiveButton.titleLabel!.text!)
        }
    }
    
    @IBAction func sixButtonClick(_ sender: UIButton) {
          let str=label.text!
               if !(str.last=="="){
                addSymbol(symbol: sixButton.titleLabel!.text!)
        }
    }
    
    
    @IBAction func oneButtonClick(_ sender: UIButton) {
          let str=label.text!
               if !(str.last=="="){
                addSymbol(symbol: oneButton.titleLabel!.text!)
        }
    }
    
    @IBAction func twoButtonClick(_ sender: UIButton) {
          let str=label.text!
               if !(str.last=="="){
                addSymbol(symbol: twoButton.titleLabel!.text!)
        }
           }
    
    
    @IBAction func threeButtonClick(_ sender: UIButton) {
          let str=label.text!
               if !(str.last=="="){
                addSymbol(symbol: threeButton.titleLabel!.text!)
        }
    }
    
    @IBAction func zeroButtonClick(_ sender: UIButton) {
        let str=label.text!
        let mySubstring = str.suffix(2)
        print(mySubstring)
        if (!str.isEmpty){
                   if (!(mySubstring=="+0") &&
                       !(mySubstring=="-0") &&
                       !(mySubstring=="*0") &&
                       !(str.last=="/") &&
                       !(str.last=="=") &&
                       !(str=="0")){
                
                                   addSymbol(symbol: zeroButton.titleLabel!.text!)
                       
               }
               }else {
                   addSymbol(symbol: zeroButton.titleLabel!.text!)

               }
   
        
       
             
        }
       
        
        
    
    
    @IBAction func desimalPointButtonClick(_ sender: UIButton) {
     //  var result=defineLastIndex(labelText: label.text!, textButton: Character("."))
        let str=label.text!
        
          if (!str.isEmpty){
                  if (!(str.last==".") &&
                    !(str.last=="+") &&
                    !(str.last=="-") &&
                  !(str.last=="*") &&
                  !(str.last=="/") &&
                  !(str.last=="=") &&
                      !(str==".")
                    ){
               
                                  addSymbol(symbol: ".")
                      
              }
              }
        
    }
    
    @IBAction func equalButtonClick(_ sender: UIButton) {
        let str=label.text!
        print("str=\(str)")
                        if (!str.isEmpty &&
                            !(str.last=="+") &&
                            !(str.last=="-") &&
                            !(str.last=="*") &&
                            !(str.last=="/") &&
                            !(str.last=="=") &&
                            !(str.last==".") &&
                            ((str.contains("+")) ||
                            (str.contains("-")) ||
                            (str.contains("*")) ||
                            (str.contains("/"))) &&
                            !(str.contains("="))){
                       
                                          addSymbol(symbol: "=")
                            if str.contains("+"){
                                splitText(text: str,symbol: "+")
                            }
                            if str.contains("-"){
                                splitText(text: str,symbol: "-")
                                                       }
                             if str.contains("*"){
                                splitText(text: str,symbol: "*")
                                                       }
                             if str.contains("/"){
                                splitText(text: str,symbol: "/")
                                                       }                      }
                      
    }
    
    @IBAction func divideButtonClick(_ sender: UIButton) {
        let str=label.text!
        addSign(str: str, symbol: "/")

    
        
    }
    
    @IBAction func multipleButtonClick(_ sender: UIButton) {
      /*  if !hasTextSymbol(text: label.text!, symbol: "*"){
            addSymbol(symbol: "*")
        }*/
         let str=label.text!
               addSign(str: str, symbol: "*")
    }
    
    @IBAction func plusButtonClick(_ sender: UIButton) {
        let str=label.text!
               addSign(str: str, symbol: "+")
    }
    
    @IBAction func minusButtonClick(_ sender: UIButton) {
        let str=label.text!
               addSign(str: str, symbol: "-")
        
    }
    
    
    @IBAction func deleteOneByOneClick(_ sender: UIButton) {
        
    }
    
    
    
    func addSymbol(symbol:String){
                label.text?.append(symbol)
    }
    
    func defineLastIndex(labelText:String,textButton:Character)->Bool{
        var b:Bool=true
        if !String(textButton).isEmpty{
            if labelText[labelText.index(before: labelText.endIndex)]==textButton  {
                 b=true
            } else{
                            b=false
            }

        }
              return b
    
    
}
    
    
    
    func hasTextSymbol(text:String,symbol:Character)->Bool{
        if (text.contains(symbol)){
            return true
        }else {
            return false
        }
    }
    
    func isAddSymbol(str:String,symbol:String){
         if (!str.isEmpty){
                   if (!(str.last=="+") &&
                    !(str.last=="-") &&
                   !(str.last=="*") &&
                   !(str.last=="/") &&
                   !(str.last=="=") &&
                       !(str=="0")){
                
                                   addSymbol(symbol: symbol)
                       
               }
               }else {
                   addSymbol(symbol: symbol)

               }
        
    }
    
    func checkLastSymbol(str:String)->Bool{
        if  !(str.last=="+")  &&
                   !(str.last=="-")  &&
                   !(str.last=="*")  &&
                   !(str.last=="/")  &&
                   !(str.last=="." )  &&
                    !(str.last=="=" ){
            return true
            
        } else {
            return false
        }
    }
    
    func addSign(str:String,symbol:String){
         if (!str.isEmpty && !hasTextSymbol(text: str, symbol: "/") &&
                   !hasTextSymbol(text: str, symbol: "+") &&
                   !hasTextSymbol(text: str, symbol: "*") &&
                   !hasTextSymbol(text: str, symbol: "-") &&
                   !hasTextSymbol(text: str, symbol: "=") &&
                   checkLastSymbol(str: str))
                                            
                          {
                          addSymbol(symbol: symbol)
                      }
                   }
    
    func splitText(text:String,symbol:String){
        let wordsOfString=text.components(separatedBy: symbol)
        var arr=[Double]()
        
        for word in wordsOfString{
            print(word)
            let operand=Double(word)!
            arr.append(operand)
            
        }
        calculate(arr: arr, symbol: symbol)
       
     
    }
    
    
    func calculate(arr: [Double],symbol:String){
                var result:Double!=0
         switch symbol {
               case "+":
                              result=arr[0]+arr[1]
                          
               case "-":
                             result=arr[0]-arr[1]

               case "*":
                            result=arr[0]*arr[1]

               case "/":
                           result=arr[0]/arr[1]

               default:
                   break
               }
               
              
               print("result=\(result)")
        label.text?.append(String(result.rounded()))    }
    
    
    
}

