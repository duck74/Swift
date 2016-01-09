//
//  VistaMasa.swift
//  Pizza
//
//  Created by Koss on 08/01/16.
//  Copyright © 2016 ITESM. All rights reserved.
//

import UIKit

class VistaMasa: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var seleccion: UILabel!
    @IBOutlet weak var masaPicker: UIPickerView!
    let masaPickerDataSource = ["delgada", "crujiente", "gruesa"]
    var pickerSelected: String = ""
    var sendMasa: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        masaPicker.dataSource = self
        masaPicker.delegate = self
        masaPicker.selectRow(1, inComponent: 0, animated: true)
        // Do any additional setup after loading the view.
    }
    
    //save value of picker
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "saveMasa" {
            sendMasa = pickerSelected
        }
    }
    
    //MARK: - Delegates and data sources
    //MARK: Data Sources
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return masaPickerDataSource.count
    }
    //MARK: Delegates
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return masaPickerDataSource[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        seleccion.text = masaPickerDataSource[row]
        self.pickerSelected = masaPickerDataSource[row]
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
