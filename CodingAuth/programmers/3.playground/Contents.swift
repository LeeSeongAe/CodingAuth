//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
/*
 문자열을 정수로 바꾸기
 문자열 s를 숫자로 변환한 결과를 반환하는 함수, solution을 완성하세요.
 */
class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "실행 결과"
        label.textColor = .black
        
        let label2 = UILabel()
        label2.frame = CGRect(x: 150, y: 250, width: 400, height: 30)
        
        let testCase = "-1234"
        let strArray = solution(testCase)
        let str = String(strArray)
        label2.text = str
        label2.textColor = .blue
        
        view.addSubview(label)
        view.addSubview(label2)
        self.view = view
    }
    
    func solution(_ s:String) -> Int {
        
        return Int(s) ?? 0
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
