//
//  ViewController.swift
//  PitchPerfect
//
//  Created by Edmund Korley on 2016-10-13.
//  Copyright © 2016 Edmund Korley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordingButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(_ sender: AnyObject) {
        recordingLabel.text = "Now recording!"
        stopRecordingButton.isEnabled = true
        recordingButton.isEnabled = false
    }

    @IBAction func stopRecording(_ sender: AnyObject) {
        recordingLabel.text = "Finished recording 😀"
        stopRecordingButton.isEnabled = false
        recordingButton.isEnabled = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        stopRecordingButton.isEnabled = false
    }
}

