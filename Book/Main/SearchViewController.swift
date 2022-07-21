//
//  SearchViewController.swift
//  Book
//
//  Created by 김태현 on 2022/07/22.
//

import UIKit

class SearchViewController: UIViewController {

    static var identifier = "SearchViewController"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        navigationController?.navigationBar.backgroundColor = .white
        navigationController?.navigationBar.scrollEdgeAppearance = UINavigationBarAppearance()
        navigationItem.title = "검색"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "도서 모음", style: .plain, target: self, action: #selector(backToMainCollectionView))
        navigationController?.navigationBar.tintColor = .black

    }

    
    @objc
    func backToMainCollectionView() {
        self.dismiss(animated: true)
    }
}
