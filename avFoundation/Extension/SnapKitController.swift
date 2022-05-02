//
//  SnapKitController.swift
//  avFoundation
//
//  Created by calmkeen on 2022/04/29.
//

import Foundation
import UIKit
import SnapKit
import SwiftUI

class SnapkitController : UIView{
    let titlelabel: UILabel = {
        let label = UILabel()
        
        label.text = "snapkit 사용한 라벨"
        label.textColor = .black
        label.font = .systemFont(ofSize: 30)
        return label
        
    }()
    let discriptionlabel: UILabel = {
        let label = UILabel()
        
        label.text = "snapkit 사용한 라벨 discription"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 24)
        return label

    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        self.addSubview(titlelabel)
        self.addSubview(discriptionlabel)
        
        self.titlelabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top).offset(24)
        }
        self.discriptionlabel.snp.makeConstraints { make in
            make.left.equalTo(self.titlelabel.snp.left).offset(24)
            make.top.equalTo(self.titlelabel.snp.bottom).offset(5)
        }
    }
    required init?(coder: NSCoder) {
        fatalError("Error")
    }
}
