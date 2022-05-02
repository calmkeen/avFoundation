//
//  ViewController.swift
//  avFoundation
//
//  Created by calmkeen on 2022/04/29.
//

import UIKit
import SwiftUI


class ViewController: UIViewController {

    private lazy var autoLayoutView = AutoLayoutView(frame: self.view.frame)
    private lazy var snapkit = SnapkitController(frame: self.view.frame)
    private lazy var FoundationOpt = avFoundationOpt(frame: self.view.frame)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = FoundationOpt
        //self.view = autoLayoutView
//        self.view = snapkit
        
    }
}

class AutoLayoutView : UIView{

    let titleLabel: UILabel = {
         let label = UILabel()
        
        label.text = "autoLayout으로 label 만들기 !"
        label.textColor = .black
        label.font = .systemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let discriptionLabel: UILabel = {
        let label = UILabel()
        
        label.text = "내용이 들어있는 label로 disLabel입니다"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        self.addSubview(titleLabel)
        self.addSubview(discriptionLabel)
        
        self.titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 24).isActive = true
        self.titleLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 124).isActive = true
        
        self.discriptionLabel.leftAnchor.constraint(equalTo: self.titleLabel.leftAnchor).isActive = true
        self.discriptionLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 5).isActive = true
      }
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}

//struct Viewcontroller_Preview: PreviewProvider{
//    static var preview: some View{
//        ViewController()
//    }
//}
