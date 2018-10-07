//
//  LiveUpdateTableViewCell.swift
//  KnightHacks
//
//  Created by KnightHacks on 9/18/18.
//  Copyright © 2018 KnightHacks. All rights reserved.
//

import UIKit

class LiveUpdatesTableViewCell: UITableViewCell {
    static let identifier = "LiveUpdatesTableViewCell"
    
    var liveUpdatesView: UIView? {
        didSet {
            setupView()
        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = BACKGROUND_COLOR
        selectionStyle = .none
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupView() {
        if liveUpdatesView != nil {
            liveUpdatesView?.translatesAutoresizingMaskIntoConstraints = false
            contentView.addSubview(liveUpdatesView!)
            
            liveUpdatesView?.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
            liveUpdatesView?.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
            liveUpdatesView?.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
            liveUpdatesView?.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        }
    }
}
