//: [Previous](@previous)
//: > 给定一个字符串，请你找出其中不含有重复字符的 最长子串 的长度。
class A {
    
   static func lengthOfLongestSubstring (_ s: String) -> Int {
        
        if s.isEmpty { return 0 }
        
        let cs = Array(s.utf8)
        
        var l = 1
        
        var start = 0
        
        var end = 0
        
        var map: [String.UTF8View.Element: Int] = [:]

        while end < cs.count {
        
            if let idx = map[cs[end]] {
                
                if idx <= start {
                    map[cs[end]] = end
                    start += 1
                    end += 1
                } else {
                    start = idx
                    end = start
                    map = [:]
                }
            } else {
                map[cs[end]] = end
                end += 1
                l = max(map.count, l)
            }
        }
        return l
    }
}



class B {
    //MARK: （ASCII字符 0-127）O(n)
   static func lengthOfLongestSubstring(_ s: String) -> Int {

        if s.isEmpty { return 0 }
        
        let s8 = Array(s.utf8)
        
        var indexs = [Int].init(repeating: -1, count: 128)
        
        var next = 0
        
        var l = 1
        
        for (idx, u) in s8.enumerated() {
            let last = indexs[Int(u)]
            if last >= next { next = last + 1 }
            l = max(l, idx - next + 1)
            
            indexs[Int(u)] = idx
        }
        return l
    }
}
//: [Next](@next)
