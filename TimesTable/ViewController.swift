//
//  ViewController.swift
//  TimesTable
//
//  Created by Sanuj Bhatia on 12/4/17.
//  Copyright © 2017 Sanuj Bhatia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = table.dequeueReusableCell(withIdentifier: "Cell")
        
        cell?.textLabel?.text = String((Int(sliderValue.value * 10)) * (indexPath.row + 1))
        
        
        return cell!
        
    }
    

    @IBAction func sliderChanged(_ sender: UISlider) {
        
        table.reloadData()
        
    }
    
    @IBOutlet weak var sliderValue: UISlider!
    
    
    @IBOutlet weak var table: UITableView!
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

