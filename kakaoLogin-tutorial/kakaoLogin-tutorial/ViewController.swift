//
//  ViewController.swift
//  kakaoLogin-tutorial
//
//  Created by 박다미 on 2023/01/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var kakaoLoginButton: UIButton!
    lazy var KakaoAuthVM : KakaoAuthVM = {kakaoLogin_tutorial.KakaoAuthVM() }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        kakaoLoginButton.setTitle("카카오 로그인", for:.normal)
       
        
        
        // Do any additional setup after loading the view.
    }

    @IBAction func loginBtnTabpped(_ sender: UIButton) {
        print("클릭됨")
        KakaoAuthVM.hanleKakaoLogin()
    }
    
}

