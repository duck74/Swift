//
//  VistaIngredientes.swift
//  Pizza
//
//  Created by Koss on 08/01/16.
//  Copyright © 2016 ITESM. All rights reserved.
//

import UIKit

class VistaIngredientes: UIViewController , UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    let ingredientesPickerDataSource = ["jamón", "pepperoni", "pavo", "salchicha", "aceituna", "cebolla", "pimiento", "piña", "anchoa"]
    
    var pickerSelected: String = ""
    var sendIngredientes = [String]()
    var rowIndex = [Int]()
    var selectedIndexPaths = [NSIndexPath]()
    
    override func viewDidLoad() {
        tableView.dataSource = self
        tableView.delegate = self
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
    }
    //save value of picker
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "saveIngredientes" {
            //let selectedRows = self.tableView.indexPathForSelectedRow!
            //sendIngredientes.append(selectedRows.row.description)
            for index in rowIndex {
                sendIngredientes.append(ingredientesPickerDataSource[index])
            }
        }
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ingredientesPickerDataSource.count
        //return self.ingredientesPickerDataSource.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
    
        cell.textLabel?.text = self.ingredientesPickerDataSource[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var listcount = 0
        //print("You selected cell #\(indexPath.row)!")
        selectedIndexPaths.append(indexPath)
        //listcount = Int(selectedIndexPaths.count)
        //print(selectedIndexPaths)
        //print(listcount)
        //print(rowIndex)
        //rowIndex = selectedIndexPaths.map{$0.row}
        //print (ingredientesPickerDataSource[indexPath.row])
        if let list = tableView.indexPathsForSelectedRows {
            print("print actual list: \(list)")
            listcount = Int(list.count)
            print(list.count)
            rowIndex = selectedIndexPaths.map{$0.row}
            print("Row index \(rowIndex)")
        }
        //let selectedRows = tableView.indexPathForSelectedRows as? [NSIndexPath]
        
        
        //print(selectedRows)
        if listcount < 5 {
        //sendIngredientes.append(ingredientesPickerDataSource[indexPath.row])
        //print(sendIngredientes)
        }
        else {
            let alert = UIAlertController(title: "Alert", message: "Solamente puedes seleccionar 5 ingredientes", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Dejar", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            //tableView.deselectRowAtIndexPath(indexPath, animated: true)
        }
    }
   
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        
        if let index = selectedIndexPaths.indexOf(indexPath) {
            selectedIndexPaths.removeAtIndex(index)
            print(selectedIndexPaths)
            rowIndex = selectedIndexPaths.map{$0.row}
        }
        
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
