//
//  BooksViewController.swift
//  University Library
//
//  Created by Huda M. A'abed on 21/07/2023.
//

import UIKit

class BooksViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var objects: [Book] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupData()
        localized()
        fetchData()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        isHidNavigation = false

        
    }
    
    @IBAction func btnMenu(_ sender: Any) {
//        if let LoginVC = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController {
//                if let username = LoginVC.txtUserName?.text, let firstCharacter = username.first, firstCharacter == "1" {
//                    let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "MenuViewController")
//                    vc.pushWithoutAnimated()
//                }
//        }
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "MenuViewController")
        vc.push()
        
    }
}

extension BooksViewController {
    func setupView(){
        collectionView?.registerXib(cell: BooksCollectionViewCell.self)
        objects.append(Book.init(title: "Carrie", authorName:"Stephen King", backgroundColor: "", color: "415EB6", bookImage: "books", btnCancel: "icBlueMoreOption"))
        objects.append(Book.init(title: "1984", authorName:"George Orwell", backgroundColor: "F0FFFF", color: "23B0B0", bookImage: "books", btnCancel: "icGreenMoreOption"))
        objects.append(Book.init(title: "Neverwhere", authorName:"Jane Austen", backgroundColor: "EEF7FE", color: "23B0B0", bookImage: "books", btnCancel: "icGreenMoreOption"))
        objects.append(Book.init(title: "The Great Gatsby", authorName:"F. Scott Fitzgerald", backgroundColor: "F0FFFF", color: "415EB6", bookImage : "books", btnCancel: "icBlueMoreOption"))
        objects.append(Book.init(title: "Sapiens", authorName:"J.R.R. Tolkien", backgroundColor: "EEF7FE", color: "415EB6", bookImage: "books", btnCancel: "icBlueMoreOption"))
        objects.append(Book.init(title: "Fahrenheit 451", authorName:"J.K. Rowling", backgroundColor: "F0FFFF", color: "23B0B0", bookImage: "books", btnCancel: "icGreenMoreOption"))
        objects.append(Book.init(title: "Becoming", authorName:"C.S. Lewis", backgroundColor: "EEF7FE", color: "23B0B0", bookImage: "books", btnCancel: "icGreenMoreOption"))
        objects.append(Book.init(title: "Dune", authorName:"J.D. Salinger", backgroundColor: "EEF7FE", color: "415EB6", bookImage: "books", btnCancel: "icBlueMoreOption"))
        objects.append(Book.init(title: "To Kill a Kingdom", authorName:"Harper Lee", backgroundColor: "EEF7FE", color: "415EB6", bookImage: "books", btnCancel: "icBlueMoreOption"))
        objects.append(Book.init(title: "Animal Farm", authorName:"Alexandra Christo", backgroundColor: "F0FFFF", color: "23B0B0", bookImage: "books", btnCancel: "icGreenMoreOption"))

        
    }
    
    func localized(){
        self.title = "Books"
    }
    
    func setupData(){
    }
    
    func fetchData(){
    }
}



extension BooksViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return objects.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell: BooksCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: BooksCollectionViewCell.id, for: indexPath) as! BooksCollectionViewCell
            let object = self.objects[indexPath.row]
            cell.object = object
            cell.configureCell()
            return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let vc = UIStoryboard.mainStorybored.instantiateViewController(withIdentifier: "BookDetailsViewController")
        vc.push()
    }
    }

extension BooksViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout ,sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width: CGFloat = (collectionView.frame.width - 20 ) / 2
        let hight: CGFloat = 125
        let size: CGSize = CGSize.init(width: width, height: hight)
        return size
        
    }
}
