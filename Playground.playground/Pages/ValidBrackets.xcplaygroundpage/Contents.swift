/*:
 [Previous](@previous)
 > 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串，判断字符串是否有效。

 有效字符串需满足：

 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
 注意空字符串可被认为是有效字符串。
 */

func isValid(_ s: String) -> Bool {
    
    if s.isEmpty { return true }
    
    let cs: [Character] = Array(s)
    
    var left: [Character] = []
    
    for c in cs {
        switch c {
        case "(", "[", "{":
            left.append(c)
        case ")":
            if left.popLast() != "(" {
                return false
            }
        case "]":
            if left.popLast() != "[" {
                return false
            }
        case "}":
            if left.popLast() != "{" {
                return false
            }
        default:
            return false
        }
    }
    return left.isEmpty
}

//: [Next](@next)
