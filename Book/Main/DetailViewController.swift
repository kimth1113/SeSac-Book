//
//  DetailViewController.swift
//  Book
//
//  Created by 김태현 on 2022/07/22.
//

import UIKit

class DetailViewController: UIViewController {

    static var identifier = "DetailViewController"
    
    @IBOutlet weak var toWebViewButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.title = "상세화면"
        
        toWebViewButton.tintColor = .white
        toWebViewButton.backgroundColor = .black
        toWebViewButton.setTitle("책 URL 정보", for: .normal)
    }

    @IBAction func tapToWebViewButton(_ sender: UIButton) {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = sb.instantiateViewController(withIdentifier: LinkInfoViewController.identifier) as? LinkInfoViewController else {
            return
        }
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
