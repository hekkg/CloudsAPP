
import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://httpbin.org/get").responseJSON{response in
//            print(response.request as Any)
//            print(response.response as Any)
//            print(response.data as Any)
//            print(response.result)
            
            if let ARRAY = response.result.value {
                print("準備印出result中的資料")
                print(ARRAY)
                
            }
            if let JSON = response.result.value {
                if let dictionary = JSON as? [String:Any]{
                    if let value = dictionary["origin"] as? String{
                        print("解出key為orgin的值")
                        print(value)
                    }
                    if let value1 = dictionary["url"] as? String{
                        print("解出key為url的值")
                        print(value1)
                    }
//                    if let value2 = dictionary["args"] as? String{
//                        print("解出key為headers的值")
//                        print(value2)
//                    }
                    
                }
                
            }

        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }


}

