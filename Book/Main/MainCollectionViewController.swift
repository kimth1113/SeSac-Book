//
//  MainCollectionViewController.swift
//  Book
//
//  Created by 김태현 on 2022/07/22.
//

import UIKit

private let reuseIdentifier = "Cell"

class MainCollectionViewController: UICollectionViewController {

    var movieList = MovieInfo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        designCollectionView()

        navigationItem.title = "도서 모음"
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "magnifyingglass"), style: .plain, target: self, action: #selector(tappedRightBarButton))
        navigationItem.rightBarButtonItem?.tintColor = .black
    }
    
    @objc
    func tappedRightBarButton() {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: SearchViewController.identifier) as? SearchViewController else {
            return
        }
        
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        
        self.present(nav, animated: true)
    }
    
    func designCollectionView() {
        
        let layout = UICollectionViewFlowLayout()
        let spacing: CGFloat = 16
        let width = UIScreen.main.bounds.width - spacing * 3
        
        layout.itemSize = CGSize(width: width / 2, height: width / 2)
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: spacing, left: spacing, bottom: spacing, right: spacing)
        
        // 상하 최소 간격
        layout.minimumLineSpacing = spacing
        // 좌우 최소 간격
        layout.minimumInteritemSpacing = spacing
        
        collectionView.collectionViewLayout = layout
    }
    
    
    
    
    
    
    
    
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movieList.movie.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MainCollectionViewCell.identifier, for: indexPath) as? MainCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let data = movieList.movie[indexPath.item]
        let i = indexPath.item
        cell.configCell(movie: data, row: i)
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: DetailViewController.identifier) as? DetailViewController else {
            return
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
