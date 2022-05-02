//
//  avFoundation.swift
//  avFoundation
//
//  Created by calmkeen on 2022/05/02.
//

import Foundation
import UIKit
import SnapKit

//
//class avFoundation : UIViewController{
//
//    private lazy var FoundationOpt = avFoundationOpt(frame: self.view.frame)
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.view = FoundationOpt
//    }
//}


class avFoundationOpt : UIView {
    
    
    var playButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "jang"), for: .normal)
        
        return button
    }()
    var timelabel : UILabel = {
        let label = UILabel()
        label.text = "00:00:00"
        label.textColor = .blue
        label.font = .systemFont(ofSize: 30)
        
        return label
    }()

    var playslider : UISlider = {
        let slider = UISlider(frame: CGRect(x:0, y:0, width:200, height:30))
        slider.minimumTrackTintColor = .red
        slider.maximumTrackTintColor = .blue
        slider.backgroundColor = .black
        slider.maximumValue = 10.0
        slider.minimumValue = 0.0
        slider.value = 5.0
        
        func onchangeSlider(sender: UISlider){
            slider.setValue(1.0, animated: true)
            return slider.value

        }
        slider.addTarget(self, action: #selector(onchangeSlider(sender:)), for: UIControlEvents.valueChanged)
        
        
        return  slider
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        self.backgroundColor = .white
        self.addSubview(playButton)
        self.addSubview(timelabel)
        self.addSubview(playslider)

        
        self.playButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(80)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(100)
        }
        self.timelabel.snp.makeConstraints { make in
            make.left.equalTo(self.playButton.snp.left).offset(50)
            make.top.equalTo(self.playButton.snp.bottom).offset(20)
        }
        self.playslider.snp.makeConstraints { make in
            make.left.equalTo(self.timelabel.snp.left).offset(50)
            make.top.equalTo(self.timelabel.snp.bottom).offset(100)
        }
       
      }
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
    

    
}
