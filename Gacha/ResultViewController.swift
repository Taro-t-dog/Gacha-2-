//
//  ResultViewController.swift
//  Gacha
//
//  Created by 瀬川太朗 on 2022/05/07.
//

import UIKit
import AVFoundation
class ResultViewController: UIViewController {
    @IBOutlet var haikeiImageView:UIImageView!
    @IBOutlet var monsterImageView:UIImageView!
    @IBOutlet var monsteNameLabel:UILabel!
    var monsterArray: [UIImage]!
    let conSoundPlayer = try!AVAudioPlayer(data: NSDataAsset(name:"congratulation")!.data)
    var monsterNameArray:[String]!
    override func viewDidLoad() {
        super.viewDidLoad()
        let number = Int.random(in: 0..<10)
        monsterArray = [UIImage(named: "monster001.png")!,
                        UIImage(named: "monster002.png")!,
                        UIImage(named: "monster003.png")!,
                        UIImage(named: "monster004.png")!,
                        UIImage(named: "monster005.png")!,
                        UIImage(named: "monster006.png")!,
                         UIImage(named: "monster007.png")!,
                        UIImage(named: "monster008.png")!,
                        UIImage(named: "monster009.png")!,
                        UIImage(named: "monster010.png")!]
        monsterNameArray = ["カマエル",
                            "アトス",
                            "アポロン",
                            "スクルド",
                            "マルタ",
                            "ブラフマー",
                            "アリナ",
                            "エリザベス",
                            "マァム",
                            "バサラ",]
        monsterImageView.image = monsterArray[number]
        monsteNameLabel.text = monsterNameArray[number]
        conSoundPlayer.currentTime = 0
        conSoundPlayer.play()
        

        if number == 9{
         
            haikeiImageView.image = UIImage(named: "bg_gold@2x")
        }else if number > 6 {
          
            haikeiImageView.image = UIImage(named: "bg_red@2x")
            
            
        }else{
           
            haikeiImageView.image = UIImage(named: "bg_blue@2x")
        }
       
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        let animation = CABasicAnimation(keyPath: "transform")
        //最初の状態
        animation.fromValue = NSNumber(value: 0)
        //2 * Double.pi = 360度
        animation.toValue   = NSNumber(value: 2 * Double.pi)
        //Z軸中心のアニメーション
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        //アニメーションの速さ
        animation.duration = 5
        //アニメーションを何回繰り返すか
        animation.repeatCount = Float.infinity
        //どのレイヤーをアニメーションさせるか
        haikeiImageView.layer.add(animation, forKey: nil)
        monsterImageView.layer.add(animation, forKey: nil)
        
        
    }
    
    
    
    
  
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
