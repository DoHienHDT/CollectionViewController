//
//  CollectionViewCell.swift
//  CollectionViewController
//
//  Created by dohien on 31/07/2018.
//  Copyright © 2018 dohien. All rights reserved.
//

import UIKit
protocol CollectionViewCellDelegate: class {
    func remove(indenPath: IndexPath)
}
class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    weak var delegate: CollectionViewCellDelegate?
    var indexPath: IndexPath!
    @IBAction func removeButton(_ sender: UIButton) {
        guard indexPath != nil else {
            return
        }
        delegate?.remove(indenPath: indexPath)
    }
}
