//: Playground - noun: a place where people can play

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

var list1 = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]
var list2 = [ 10, -1, 3, 9, 2, 27, 8, 5, 1, 3, 0, 26 ]

bubbleSort(&list1, >);
bubbleSort(&list2, <);


