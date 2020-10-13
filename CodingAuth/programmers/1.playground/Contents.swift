//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport
/*
 정수 배열 numbers가 주어집니다. numbers에서 서로 다른 인덱스에 있는 두 개의 수를 뽑아 더해서 만들 수 있는 모든 수를 배열에 오름차순으로 담아 return 하도록 solution 함수를 완성해주세요.
 https://programmers.co.kr/learn/courses/30/lessons/68644
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
        label2.frame = CGRect(x: 120, y: 250, width: 400, height: 30)
        let testCase = [2, 3, 4, 5, 6] // 테스트 케이스 값
        let strArray = solution(testCase)
        let str = strArray.map(String.init)
        print(str)
        label2.text = str.joined(separator: ", ")
        label2.textColor = .blue
        
        view.addSubview(label)
        view.addSubview(label2)
        self.view = view
    }
    
    //플랫폼의 함수
    func solution(_ numbers:[Int]) -> [Int] {
        
        var setArray = Set<Int>()
        
        for i in 0..<numbers.count-1 {
            for j in i+1..<numbers.count {
                setArray.insert(numbers[i] + numbers[j])
            }
        }
        
        return setArray.sorted()
    }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
