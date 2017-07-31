//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Luke Fitzgerald on 6/27/17.
//  Copyright © 2017 Luke Fitzgerald. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.blue
    }

    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let songTitle = "Quick Playing Games With My Heart"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let destination = segue.destination as?
            PlaySongVC {
            if let song = sender as? String {
                    destination.selectedSong = song
            }
            
        }
    }
    

}
