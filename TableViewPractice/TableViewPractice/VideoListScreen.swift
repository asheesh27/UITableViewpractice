//
//  VideoListScreen.swift
//  TableViewPractice
//
//  Created by macbook on 17/02/22.
//

import UIKit

class VideoListScreen: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var video: [Video] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        video = creatArray()
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func creatArray()->[Video]{
        
        var tempVideos:[Video] = []

        let video1 = Video(image: UIImage(named: "future")!, title: "Seed to the future")
        let video2 = Video(image: UIImage(named: "scenery")!, title: "Top 10 Places to visit now")
        let video3 = Video(image: UIImage(named: "blackpanther")!, title: "Superhero movies to die for")
        let video4 = Video(image: UIImage(named: "traveler")!, title: "Solo travel, the new booming industry")
        let video5 = Video(image: UIImage(named: "networking")!, title: "Your UPI app is a genius")
        let video6 = Video(image: UIImage(named: "milkyway")!, title: "The limits of space")
        let video7 = Video(image: UIImage(named: "walkway")!, title: "Escaping into the unknown")
        let video8 = Video(image: UIImage(named: "interstellar")!, title: "A celestial expedition")
        let video9 = Video(image: UIImage(named: "windingroad")!, title: "journey")
        let video10 = Video(image: UIImage(named: "smallworld")!, title: "the bulk of creation unleashed")
        let video11 = Video(image: UIImage(named: "mountains")!, title: "Where the heart is")
        let video12 = Video(image: UIImage(named: "cityscape")!, title: "Secret mountain")
        let video13 = Video(image: UIImage(named: "trance")!, title: "To another world")
        

        tempVideos.append(video1)
        tempVideos.append(video2)
        tempVideos.append(video3)
        tempVideos.append(video4)
        tempVideos.append(video5)
        tempVideos.append(video6)
        tempVideos.append(video7)
        tempVideos.append(video8)
        tempVideos.append(video9)
        tempVideos.append(video10)
        tempVideos.append(video11)
        tempVideos.append(video12)
        tempVideos.append(video13)

        return tempVideos
    }
 
}

extension VideoListScreen: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return video.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let currVideo:Video = video[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VideoCell") as! VideoCell
        cell.setVideo(video: currVideo)
        return cell
    }
}
