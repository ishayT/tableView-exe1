//
//  ViedeoListScreen.swift
//  tableView exe1
//
//  Created by Ishay on 2/13/18.
//  Copyright © 2018 Ishay. All rights reserved.
//

import UIKit

class ViedeoListScreen: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var videos : [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        videos = createVideoArray()
        
    }

    func createVideoArray() -> [Video] {
        
        var tempVideos : [Video] = []
        
        let video1 = Video(image: #imageLiteral(resourceName: "beginner-first-app"), title: "yourFirstApp")
        let video2 = Video(image: #imageLiteral(resourceName: "dev-setup"), title: "My Dev Setup")
        let video3 = Video(image: #imageLiteral(resourceName: "int-overview"), title: "Ios Interview")
        let video4 = Video(image: #imageLiteral(resourceName: "ss-delegates"), title: "Buttons In TableViews")
        let video5 = Video(image: #imageLiteral(resourceName: "ss-uipickerview-card"), title: "UIPickerView Tutorial")
        let video6 = Video(image: #imageLiteral(resourceName: "vlog-4"), title: "Day In The Life")
        
        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        
        return tempVideos
    }
}


extension ViedeoListScreen : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let video = videos[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        
        cell.setVideo(video: video)
        
        return cell
    }
}







