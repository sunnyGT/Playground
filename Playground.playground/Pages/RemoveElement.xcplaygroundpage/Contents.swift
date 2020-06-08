//: [Previous](@previous)

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
