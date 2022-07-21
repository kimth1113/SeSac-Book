//
//  MainCollectionViewCell.swift
//  Book
//
//  Created by 김태현 on 2022/07/22.
//

import UIKit

class MainCollectionViewCell: UICollectionViewCell {
    static var identifier = "MainCollectionViewCell"
    @IBOutlet weak var bookImage: UIImageView!
    @IBOutlet weak var bookTitleLabel: UILabel!
    
    func configCell(movie: Movie, row: Int) {
        designCell(movie: movie, row: row)
    }
    
    func designCell(movie: Movie, row: Int) {
        let colorList: [UIColor] = [.purple, .green, .black, .blue, .brown, .darkGray, .magenta]

        print(row)
        
        backgroundColor = colorList[Int.random(in: 0...6)]
        
        bookTitleLabel.text = movie.title
        bookTitleLabel.textColor = .white
        bookTitleLabel.font = .systemFont(ofSize: 20, weight: .black)
        
        bookImage.image = UIImage(named: movie.title!)
        bookImage.contentMode = .scaleAspectFill
        bookImage.layer.cornerRadius = 8
        
        layer.cornerRadius = 12
        
    }
    
    
}


