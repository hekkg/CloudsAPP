
import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Alamofire.request("https://httpbin.org/get").responseJSON{response in
            print(response.request as Any)
            print(response.response as Any)
            print(response.data as Any)
            print(response.result)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
   
    }


}

