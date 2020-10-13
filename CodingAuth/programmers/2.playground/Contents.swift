//: A UIKit based Playground for presenting user interface

import UIKit
import PlaygroundSupport

/*
 배열 array의 i번째 숫자부터 j번째 숫자까지 자르고 정렬했을 때, k번째에 있는 수를 구하려 합니다.

 예를 들어 array가 [1, 5, 2, 6, 3, 7, 4], i = 2, j = 5, k = 3이라면

 array의 2번째부터 5번째까지 자르면 [5, 2, 6, 3]입니다.
 1에서 나온 배열을 정렬하면 [2, 3, 5, 6]입니다.
 2에서 나온 배열의 3번째 숫자는 5입니다.
 https://programmers.co.kr/learn/courses/30/lessons/42748
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
        
        let testCase = [1, 5, 2, 6, 3, 7, 4]// 테스트 케이스 값
        let commands = [[2, 5, 3], [4, 4, 1], [1, 7, 3]]
        let strArray = solution(testCase, commands)
        
        let str = strArray.map(String.init)
        print(str)
        label2.text = str.joined(separator: ", ")
        label2.textColor = .blue
        
        view.addSubview(label)
        view.addSubview(label2)
        self.view = view
    }
    
    //플랫폼의 함수
    func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
        
        var newArray: [Int] = []
        
//     let arraySlice = array[commands[0][0]-1 ... commands[0][1]-1].sorted()
//     newArray.append(arraySlice[commands[0][2]-1])
        
//     let arraySlice2 = array[commands[1][0]-1 ... commands[1][1]-1].sorted()
//     newArray.append(arraySlice2[commands[1][2]-1])
        
//     let arraySlice3 = array[commands[2][0]-1 ... commands[2][1]-1].sorted()
//     newArray.append(arraySlice3[commands[2][2]-1])
        
        for i in 0..<commands.count {
            let arraySlice = array[commands[i][0]-1 ... commands[i][1]-1].sorted()
            newArray.append(arraySlice[commands[i][2]-1])
        }
        
        return newArray
    }
    
//2. 다른방식으로
// func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
//         return commands.map({array[($0[0]-1)...($0[1]-1)].sorted()[$0[2]-1]
//         })
//     }
    
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()

