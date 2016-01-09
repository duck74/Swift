//
//  VistaTamano.swift
//  Pizza
//
//  Created by Koss on 08/01/16.
//  Copyright © 2016 ITESM. All rights reserved.
//

import UIKit

class VistaTamano: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var seleccion: UILabel!
    @IBOutlet weak var pickerTamano: UIPickerView!
    
    let pickerDataSource = ["chica", "mediana", "grande"];
    var pickerSelected: String = ""
    var sendTamano: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.pickerTamano.dataSource = self;
        self.pickerTamano.delegate = self;
        pickerTamano.selectRow(1, inComponent: 0, animated: true)
    }
    
    //save value of picker
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "saveTamano" {
            sendTamano = pickerSelected
            print(sendTamano)
        }
    }
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerDataSource.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerDataSource[row]
    }

    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        seleccion.text = pickerDataSource[row]
        self.pickerSelected = pickerDataSource[row]
        /*if(row == 0)
        {
            self.pickerSelected = pickerDataSource[0];
            print(pickerDataSource[0])
        }
        else if(row == 1)
        {
            self.pickerSelected = pickerDataSource[1];
            print(pickerDataSource[1])
        }
        else if(row == 2)
        {
            self.pickerSelected = pickerDataSource[2];
            print(pickerDataSource[2])
        }
        else
        {
            self.pickerSelected = "Nada"
            print(pickerSelected)
        }*/
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
