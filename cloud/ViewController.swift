//
//  ViewController.swift
//  CloudsAPP
//
//  Created by mike on 2017/7/24.
//  Copyright © 2017年 mike. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    var apiGithubComJsonsGloss: [ApiGithubComJsonGloss] = []//用來放 completion 傳來的資料
    
    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD
        // Do any additional setup after loading the view, typically from a nib.
=======
        Alamofire.request("https://api.github.com/users/octocat/repos").responseJSON{response in
            //更符合內容的命名變數名稱為 result_value
            guard let result_value = response.result.value,
                let array = result_value as? [Any] //將result_value解讀為任何型態資的陣列
                else{
                    return
            }
            for JSON_OBJECT in array {//將陣列的第一個JSON物件 做解析
                guard let dictionary = JSON_OBJECT as? [String:Any] //將JSON物件轉成key-value陣列
                    else{
                        return
                }
                for (key,value) in dictionary{
                    switch value{
                    case is Int:
                        print("\(key):\(value)(Int)")
                    case is String:
                        print("\(key):\(value)(String)")
                    case is Bool:
                        print("\(key):\(value)(Bool)")
                    default:
                        print("\(key):(unknown type)")
                    }
                
                }

//                guard let value = dictionary["id"] as? Int
//                else{
//                    return
//                }
//                
//                print("ID:\(value)")
                
//                if let value = dictionary["id"] as? Int{
//                    print("ID:\(value)")
//                }
//                if let value = dictionary["name"] as? String{
//                    print("name: \(value)")
//                }
//                if let value = dictionary["private"] as? Bool{
//                    print("private: \(value)")
//                }
//                if let value = dictionary["homepage"] as? String{
//                    print("homepage: \(value)")
//                }else{
//                    print("homepage:null")//不知道原始陣列之下的格式處理
//                }
            }
        }
>>>>>>> 0c749a9f4bb87e95b81f1d6628e8bcd750e4d1f7
        
        //希望重構程式到用以下一行即可處理 JSON 的取得
        //使用這個方法時，其實物件還沒初始化
        ApiGithubComJsonGloss.fetch(){ dataTransfer in//completion 將資料傳過來
            self.apiGithubComJsonsGloss = dataTransfer//將資料放在這個類別中
//            print("fetch() 完成後")
            print(self.apiGithubComJsonsGloss)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

