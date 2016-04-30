//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by David Teo on 4/29/16.
//  Copyright © 2016 Gabrielle Miller-Messner. All rights reserved.
//

import Foundation
import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {
    // Here is the history array which will hold the results of each match that is played in a session.
    var history = [RPSMatch]()
    
    // Mark: Table View Data Source Methods
    
    /**
     * Number of Rows
    */
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.history.count
    }
    
    /**
     * Cell For Row At Index Path
    */
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("History")!
        let match = self.history[indexPath.row]
        
        // Set the win/lose text status
        if match.p1 == match.p2 {
            cell.textLabel?.text = "Tie."
        } else {
            cell.textLabel?.text = match.p1.defeats(match.p2) ? "Win!" : "Loss."
        }
        
        // if the cell has a detail label, we will set it
        if let detailTextLabel = cell.detailTextLabel {
            detailTextLabel.text = match.winner.description + " vs " + match.loser.description
        }
        
        return cell
    }
}
