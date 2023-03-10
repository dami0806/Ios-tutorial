//
//  KakaoAuthVM.swift
//  kakaoLogin-tutorial
//
//  Created by 박다미 on 2023/01/18.
//

import Foundation
import Combine
import KakaoSDKAuth
import KakaoSDKUser

class KakaoAuthVM: ObservableObject{
    var subscriptions = Set <AnyCancellable>()
    init(){
        print("for noError check")
    }
    
    func hanleKakaoLogin(){
        print("KakaoAuthVM - handleKakao")
        
        // 카카오톡 실행 가능 여부 확인
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                    //do something
                    _ = oauthToken
                }
            }
        }  else { //카카오톡 설치 안돼있으면
            
            UserApi.shared.loginWithKakaoAccount {(oauthToken, error) in
                    if let error = error {
                        print(error)
                    }
                    else {
                        print("loginWithKakaoAccount() success.")

                        //do something
                        _ = oauthToken
                    }
                }
            
            
        }
        
        
        
        
    }
}
