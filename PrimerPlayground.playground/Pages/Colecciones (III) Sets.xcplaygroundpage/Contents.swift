import Foundation

var a:Set = [1,5,8,5,3,5,8,9,10,12]
var b:Set = [2,3,6,7,10,11,13,14]

a.union(b)
a.symmetricDifference(b)
a.intersection(b)
a.subtract(b)

for num in a.sorted().reversed() {
   print(num)
}

