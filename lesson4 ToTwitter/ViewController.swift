//import UIKit
   import UIKit
//import Social
   import Social




//    class ViewController: UIViewController {
       class ViewController: UIViewController {
    
//    var myComposeView : SLComposeViewController!
       var myComposeView : SLComposeViewController!
//    var myTwitterButton: UIButton!
       var myTwitterButton: UIButton!
    
//      override func viewDidLoad() {
         override func viewDidLoad() {
        super.viewDidLoad()
//     super.viewDidLoad()
//
        
        
        // Twitter用のUIButtonの生成.
//        let hex: Int = 0x55ACEE
            let hex: Int = 0x55ACEE
//         let red = Double((hex & 0xFF0000) >> 16) / 255.0
            let red = Double((hex & 0xFF0000) >> 16) / 255.0
//        let green = Double((hex & 0xFF00) >> 8) / 255.0
           let green = Double((hex & 0xFF00) >> 8) / 255.0
//        let blue = Double((hex & 0xFF)) / 255.0
           let bule = Double((hex & 0xFF)) / 255.0
            
            let myColor: UIColor = UIColor( red: CGFloat(red), green: CGFloat(green), blue: CGFloat(bule), alpha: CGFloat(1.0))
//            let myColor: UIColor = UIColor( red: CGFloat(red), green: CGFloat(green), blue: CGFloat(bule), alpha: CGFloat(1.0))
//
        // ボタン.
//        myTwitterButton = UIButton()
            myTwitterButton = UIButton()
//          myTwitterButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
             myTwitterButton.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        myTwitterButton.backgroundColor = myColor
           myTwitterButton.backgroundColor = myColor
//            myTwitterButton.layer.masksToBounds = true
               myTwitterButton.layer.masksToBounds = true
//            myTwitterButton.setTitle("Twitter", for: UIControlState.normal)
            myTwitterButton.setTitle("Twitter", for: UIControlState.normal)
//         myTwitterButton.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(20))
            myTwitterButton.titleLabel?.font = UIFont.systemFont(ofSize: CGFloat(20))
            
//        myTwitterButton.setTitleColor(UIColor.white, for: UIControlState.normal)
           myTwitterButton.setTitleColor(UIColor.white, for: UIControlState.normal)
//        myTwitterButton.layer.cornerRadius = 50.0
           myTwitterButton.layer.cornerRadius = 50.0
//        myTwitterButton.layer.position = CGPoint(x: self.view.frame.width/2, y:self.view.frame.height/2)
            myTwitterButton.layer.position = CGPoint(x: self.view.frame.width/2, y: self.view.frame.height/2)
//        myTwitterButton.tag = 1
            myTwitterButton.tag = 1
//         myTwitterButton.addTarget(self, action: #selector(ViewController.onPostToTwitter(sender:)), for: .touchUpInside)
            myTwitterButton.addTarget(self, action: #selector(ViewController.onPostToTwitter(sender:)), for: .touchUpInside)
        
        // buttonをviewに追加.
        self.view.addSubview(myTwitterButton)
            self.view.addSubview(myTwitterButton)
    }
    
    // ボタンイベント.
//    @objc func onPostToTwitter(sender : AnyObject) {
        @objc func onPostToTwitter(sender: AnyObject){
        
        // SLComposeViewControllerのインスタンス化.
        // ServiceTypeをTwitterに指定.
//            myComposeView = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
            myComposeView = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        // 投稿するテキストを指定.
//        myComposeView.setInitialText("Twitter Test from Swift")
        myComposeView.setInitialText("Twitter Test from Swift")
        // 投稿する画像を指定.
//        myComposeView.add(UIImage(named: "sample.jpg"))
           myComposeView.add(UIImage(named: "sample.jpg"))
        
        // myComposeViewの画面遷移.
//            self.present(myComposeView, animated: true, completion: nil)
            self.present(myComposeView, animated: true, completion: nil)
    }
}







