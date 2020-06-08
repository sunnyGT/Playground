/*:
 [Previous](@previous)
 > 给你一个数组 nums 和一个值 val，你需要 原地 移除所有数值等于 val 的元素，并返回移除后数组的新长度。

 不要使用额外的数组空间，你必须仅使用 O(1) 额外空间并 原地 修改输入数组。

 元素的顺序可以改变。你不需要考虑数组中超出新长度后面的元素。
 
 */
func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
    
    var l = 0
    
    var r = nums.count - 1
    
    while l <= r {
        
        while nums[r] != val, l < r {
            l += 1
        }
    
        while nums[r] == val, l < r {
            r -= 1
        }
        
        if l < r {
            let right = nums[r]
            nums[r] = nums[l]
            nums[l] = right
        } else {
            if nums[l] != val { l += 1 }
            if nums[r] == val { r -= 1 }
        }
    }
    return l
}
//: [Next](@next)
