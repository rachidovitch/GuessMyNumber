//
//  ViewController.swift
//  ProjectToDay
//
//  Created by mac on 16/08/2016.
//  Copyright © 2016 Rachidovitch. All rights reserved.
//  majmou3at toudart 

import UIKit

class ViewController: UIViewController {
    
    var resultat: Int = 0
    
    var numberToGuess = 5
    
    var maxTemps = 4
    
    var temps = 0
    
    // déclaration des Outlets
    
    @IBOutlet weak var mathLabel: UILabel!
    
    @IBOutlet weak var votreNombre: UITextField!
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var labelOne: UILabel!
    
    @IBOutlet weak var moins2ButtonTapped: UIButton!
    
    @IBOutlet weak var plus2ButtonTapped: UIButton!
    
    @IBOutlet weak var moinsButtonTapped: UIButton!
    
    @IBOutlet weak var plusButtonTapped: UIButton!
    
    @IBOutlet weak var moins3ButtonTapped: UIButton!
    
    @IBOutlet weak var plus3ButtonTapped: UIButton!
    
    @IBOutlet weak var moins4Button: UIButton!
    
    @IBOutlet weak var plus4Button: UIButton!
    
    @IBOutlet weak var mois5Button: UIButton!
    
    @IBOutlet weak var plus5Button: UIButton!
    
    @IBOutlet weak var moins6Button: UIButton!
    
    @IBOutlet weak var plus6Button: UIButton!
    
    @IBOutlet weak var moins7Button: UIButton!
    
    @IBOutlet weak var plus7Button: UIButton!
    
    @IBOutlet weak var moins8Button: UIButton!
    
    @IBOutlet weak var plus8Button: UIButton!
    
    @IBOutlet weak var moins9Button: UIButton!
    
    @IBOutlet weak var plus9: UIButton!
    
    @IBOutlet weak var back: UIButton!
    
    @IBOutlet weak var attentionLabel: UILabel!
    
    @IBOutlet weak var labelGuess: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    // déclaration des functions
    
    @IBAction func playButtonTapped(sender: AnyObject) {
        
        if votreNombre.text == "\(numberToGuess)" {
            
            hiddenThreeView()
            labelGuess.text = " you have guess the number \(numberToGuess) "
            labelGuess.backgroundColor = UIColor.cyanColor()
            
            
        }else if votreNombre.text != nil && votreNombre.text != ""{
            
            temps = 0
            
            hiddenFirstView()
            
            resultat = Int(votreNombre.text!)!

            
            labelOne.text = votreNombre.text
        }
        
        else {
            attentionLabel.hidden = false
            attentionLabel.text = " vous n'avez pas entrer un numéro"
        }
    }
    
    
    
    @IBAction func moins2Tapped(sender: AnyObject) {
        
        updateMoins2Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    
    @IBAction func plus2Tapped(sender: AnyObject) {
        
        updatePlus2Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
        
    }
    
    
    
    @IBAction func moins1Tapped(sender: AnyObject) {
        updateMoins1Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func plus1Tapped(sender: AnyObject) {
        
        updatePlus1Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func moins3Tapped(sender: AnyObject) {
        
        updateMoins3Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func plus3Tapped(sender: AnyObject) {
        
        updatePlus3Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func moins4Tapped(sender: AnyObject) {
        
        updateMoins4Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func plus4Tapped(sender: AnyObject) {
        
        updatePlus4Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
        }
        
        loseGame()
    }
    
    @IBAction func moins5Tapped(sender: AnyObject) {
        
        updateMoins5Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func plus5Tapped(sender: AnyObject) {
        
        updatePlus5Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func moins6Tapped(sender: AnyObject) {
        
        updateMoins6Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func plus6Tapped(sender: AnyObject) {
        
        updatePlus6Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
        
    }
    
    @IBAction func moins7Tapped(sender: AnyObject) {
        
        updateMoins7Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
        }
        
        loseGame()
        
    }
    
    @IBAction func pllus7Tapped(sender: AnyObject) {
       
        updatePlus7Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func moins8Tapped(sender: AnyObject) {
        
        updateMoins8Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
        }
        
        loseGame()
    }
    
    @IBAction func plus8Tapped(sender: AnyObject) {
        
        updatePlus8Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func moins9Tapped(sender: AnyObject) {
        
        updateMoins9Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
    }
    
    @IBAction func plus9Tapped(sender: AnyObject) {
        
        updatePlus9Label()
        
        changeLabel()
        
        if isNumberGuessed() {
            
            hiddenThreeView()
            
        }
        
        loseGame()
        
    }
    
    
    @IBAction func backButton(sender: AnyObject) {
        
        hiddenSecondView()
        attentionLabel.hidden = true
        votreNombre.text = ""
        labelGuess.hidden = true
        
        
    }
    
    
    // déclaration des functions
    
    func hiddenFirstView(){
        
        mathLabel.hidden = true
        votreNombre.hidden = true
        playButton.hidden = true
        attentionLabel.hidden = true
        
        labelOne.hidden = false
        
        moinsButtonTapped.hidden = false
        plusButtonTapped.hidden = false
        
        moins2ButtonTapped.hidden = false
        plus2ButtonTapped.hidden = false
        
        moins3ButtonTapped.hidden = false
        plus3ButtonTapped.hidden = false
        
        moins4Button.hidden = false
        plus4Button.hidden = false
        
        mois5Button.hidden = false
        plus5Button.hidden = false
        
        moins6Button.hidden = false
        plus6Button.hidden = false
        
        moins7Button.hidden = false
        plus7Button.hidden = false
        
        moins8Button.hidden = false
        plus8Button.hidden = false
        
        moins9Button.hidden = false
        plus9.hidden = false
        
        back.hidden = false
    }
    
    func hiddenSecondView(){
        
        mathLabel.hidden = false
        votreNombre.hidden = false
        playButton.hidden = false
        attentionLabel.hidden = false
        
        labelOne.hidden = true
        
        moinsButtonTapped.hidden = true
        plusButtonTapped.hidden = true
        
        moins2ButtonTapped.hidden = true
        plus2ButtonTapped.hidden = true
        
        moins3ButtonTapped.hidden = true
        plus3ButtonTapped.hidden = true
        
        moins4Button.hidden = true
        plus4Button.hidden = true
        
        mois5Button.hidden = true
        plus5Button.hidden = true
        
        moins6Button.hidden = true
        plus6Button.hidden = true
        
        moins7Button.hidden = true
        plus7Button.hidden = true
        
        moins8Button.hidden = true
        plus8Button.hidden = true
        
        moins9Button.hidden = true
        plus9.hidden = true
        
        back.hidden = true
        
        labelGuess.hidden = false
    }
    
    func updateMoins2Label(){
        resultat -= 2
    }
    
    func updatePlus2Label(){
        resultat += 2
    }
    
    func updateMoins1Label(){
        resultat -= 1
    }
    
    func updatePlus1Label(){
        resultat += 1
    }
    
    func updateMoins3Label(){
        resultat -= 3
    }
    
    func updatePlus3Label(){
        resultat += 3
    }

    func updateMoins4Label(){
        resultat -= 4
    }
    
    func updatePlus4Label(){
        resultat += 4
    }
    
    func updateMoins5Label(){
        resultat -= 5
    }
    
    func updatePlus5Label(){
        resultat += 5
    }
    
    func updateMoins6Label(){
        resultat -= 6
    }
    
    func updatePlus6Label(){
        resultat += 6
    }
    
    func updateMoins7Label(){
        resultat -= 7
    }
    
    func updatePlus7Label(){
        resultat += 7
    }
    
    func updateMoins8Label(){
        resultat -= 8
    }
    
    func updatePlus8Label(){
        resultat += 8
    }
    
    func updateMoins9Label(){
        resultat -= 9
    }
    
    func updatePlus9Label(){
        resultat += 9
    }
    
    func changeLabel(){
        labelOne.text = "\(resultat)"
    }
    
    func isNumberGuessed() -> Bool {
        if resultat == numberToGuess {
            
            
            return true
        }
        else {
            return false
        }
    }
    
    
    func hiddenThreeView(){
        
        mathLabel.hidden = true
        votreNombre.hidden = true
        playButton.hidden = true
        attentionLabel.hidden = true
        
        labelOne.hidden = true
        
        moinsButtonTapped.hidden = true
        plusButtonTapped.hidden = true
        
        moins2ButtonTapped.hidden = true
        plus2ButtonTapped.hidden = true
        
        moins3ButtonTapped.hidden = true
        plus3ButtonTapped.hidden = true
        
        moins4Button.hidden = true
        plus4Button.hidden = true
        
        mois5Button.hidden = true
        plus5Button.hidden = true
        
        moins6Button.hidden = true
        plus6Button.hidden = true
        
        moins7Button.hidden = true
        plus7Button.hidden = true
        
        moins8Button.hidden = true
        plus8Button.hidden = true
        
        moins9Button.hidden = true
        plus9.hidden = true
        
        back.hidden = false
        
        labelGuess.hidden = false
        
        labelGuess.text = " number is found \(resultat) you win this game :)  after  \(temps+1) attemps"
        
    }
    
    func loseGame(){
        
        if maxTemps < temps {
            
            hiddenThreeView()
            attentionLabel.hidden = true
            votreNombre.text = ""
            labelGuess.hidden = false
            labelGuess.backgroundColor = UIColor .yellowColor()
            
            labelGuess.text = " Sorry you have lose the game  :( "
            
        }
    temps += 1
        
    }
}

