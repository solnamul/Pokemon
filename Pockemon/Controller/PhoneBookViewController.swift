//
//  PhoneBookViewController.swift
//  Pockemon
//
//  Created by t2023-m105 on 11/12/24.
//

import UIKit

class PhoneBookViewController: UIViewController {
    
    let profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.layer.cornerRadius = 75 // 원형으로 만들기 위해 반지름 설정
        imageView.layer.borderWidth = 1
        imageView.layer.borderColor = UIColor.gray.cgColor
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let randomImageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("랜덤 이미지 생성", for: .normal)
        button.setTitleColor(.gray, for: .normal)
        button.addTarget(PhoneBookViewController.self, action: #selector(generateRandomImage), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    let nameTextView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.textColor = .gray
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.cornerRadius = 8
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let phoneNumberTextView: UITextView = {
        let textView = UITextView()
        textView.font = UIFont.systemFont(ofSize: 16)
        textView.textColor = .gray
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.layer.cornerRadius = 8
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "연락처 추가"
        
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(profileImageView)
        view.addSubview(randomImageButton)
        view.addSubview(nameTextView)
        view.addSubview(phoneNumberTextView)
        
        NSLayoutConstraint.activate([
            // 프로필 이미지
            profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            profileImageView.widthAnchor.constraint(equalToConstant: 150),
            profileImageView.heightAnchor.constraint(equalToConstant: 150),
            
            // 랜덤 이미지 생성 버튼
            randomImageButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            randomImageButton.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 16),
            
            // 이름 입력 텍스트뷰
            nameTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            nameTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            nameTextView.topAnchor.constraint(equalTo: randomImageButton.bottomAnchor, constant: 40),
            nameTextView.heightAnchor.constraint(equalToConstant: 50),
            
            // 전화번호 입력 텍스트뷰
            phoneNumberTextView.leadingAnchor.constraint(equalTo: nameTextView.leadingAnchor),
            phoneNumberTextView.trailingAnchor.constraint(equalTo: nameTextView.trailingAnchor),
            phoneNumberTextView.topAnchor.constraint(equalTo: nameTextView.bottomAnchor, constant: 16),
            phoneNumberTextView.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc func generateRandomImage() {
        profileImageView.backgroundColor = UIColor(
            red: CGFloat.random(in: 0...1),
            green: CGFloat.random(in: 0...1),
            blue: CGFloat.random(in: 0...1),
            alpha: 1.0
        )
    }
}
