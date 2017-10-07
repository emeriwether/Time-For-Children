//
//  SpoonKnifeViewController.swift
//  Alex
//
//  Created by Alex Panganiban on 5/17/17.
//  Copyright © 2017 TFC. All rights reserved.
//

import UIKit
import AVFoundation

class SpoonKnifeViewController: UIViewController {
    @IBOutlet weak var spoon: UIButton!
    @IBOutlet weak var knife: UIButton!
    
    
    //Load Audio
    var getKnife = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "getKnife", ofType: "mp3")!));
    
    var correct = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "Correct", ofType: "mp3")!));
    
    var incorrect = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "Incorrect", ofType: "mp3")!));

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func spoonTapped(_ sender: Any) {
        incorrect.play();
        
    }

    @IBAction func knifeTapped(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
