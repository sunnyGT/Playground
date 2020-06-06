/*:
 [Previous](@previous)
 ****
 > 我们把只包含因子 2、3 和 5 的数称作丑数（Ugly Number）。求按从小到大的顺序的第 n 个丑数。
*/

func nthUglyNumber(_ n: Int) -> Int {
    
    if n <= 0 { return -1 }
    
    if n < 7 { return n  }
    
    var i = 0, j = 0, k = 0
    
    var m = 0
    
    var um = [1]
    
    while m < n {
        
        let um2 = um[i] * 2
        
        let um3 = um[j] * 3
        
        let um5 = um[k] * 5
        
        let next = min(um2, um3, um5)
        
        if next == um2 {
            i += 1
        }
        
        if next == um3 {
            j += 1
        }
        
        if next == um5 {
            k += 1
        }
        um.append(next)
        
        m += 1
    }
    return um[m]
}

nthUglyNumber(10)

/*:
 ****
 [Next](@next)
*/


