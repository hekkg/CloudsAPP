
import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
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
        
//
//        Alamofire.request("https://httpbin.org/get").responseJSON{response in
////            print(response.request as Any)
////            print(response.response as Any)
////            print(response.data as Any)
////            print(response.result)
//            
//            if let ARRAY = response.result.value {
//                print("準備印出result中的資料")
//                print(ARRAY)
//                
//            }
//            if let JSON = response.result.value {
//                if let dictionary = JSON as? [String:Any]{
//                    if let value = dictionary["origin"] as? String{
//                        print("解出key為orgin的值")
//                        print(value)
//                    }
//                    if let value = dictionary["url"] as? String{
//                        print("解出key為url的值")
//                        print(value)
//                    }
//                    if let headers_dictionary = dictionary["headers"] as? [String:Any]{
//                        
//                        for (key,value) in headers_dictionary {
//                            if let value_string = value as? String {
//                                print(key + ":" + value_string)
//                            }
//                        }
//                        
////                        
////                        if let value = headers_dictionary["Accept"] as? String{
////                            print("解出key為Accept的值")
////                            print(value)
////                        
////                        }
////                        if let value = headers_dictionary["Connection"] as? String{
////                            print("解出key為Connection的值")
////                            print(value)
////                            
////                        }
////                        if let value = headers_dictionary["Accept-Encoding"] as? String{
////                            print("解出key為Accept-Encoding的值")
////                            print(value)
////                            
////                        }
////                        if let value = headers_dictionary["Accept-Language"] as? String{
////                            print("解出key為Accept-Language的值")
////                            print(value)
////                            
////                        }
////                        if let value = headers_dictionary["Host"] as? String{
////                            print("解出key為Host的值")
////                            print(value)
////                            
////                        }
////                        if let value = headers_dictionary["User-Agent"] as? String{
////                            print("解出key為User-Agent的值")
////                            print(value)
////                            
////                        }
//                        
//                       
//                    }
//                    if let value = dictionary["args"] as? String{
//                        print("解出key為args的值")
//                        print(value)
//                    }
//                    
//                    
//                }
//                
//            }
//
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }


}

