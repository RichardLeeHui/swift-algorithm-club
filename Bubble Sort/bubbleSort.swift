//
//  bubbleSort.swift
//
//
//  Created by lihui on 2017/7/21.
//  Copyright © 2017年 uptechteam. All rights reserved.
//

func bubbleSort<T:Comparable>(_ aArray: inout [T], _ isOrderedBefore: (T, T) -> Bool)
{
    let count = aArray.count
    guard count > 1 else { return }
  
    for i in 0..<count
    {
        var isChanged = false;
        for j in 0..<count - i - 1
        {
            if (isOrderedBefore(aArray[j], aArray[j+1]))
            {
                let tmp = aArray[j];
                aArray[j] = aArray[j+1];
                aArray[j+1] = tmp;
                isChanged = true;
            }
        }
    
        if (!isChanged)
        {
            break;
        }
    }
}
