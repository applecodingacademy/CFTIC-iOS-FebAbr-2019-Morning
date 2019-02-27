import Foundation

let num = 929

if num > 0 {
   if num < 3 {
      print("PRIMO")
   } else {
      if (num % 2 == 0) || (num % 3 == 0) {
         print("NO ES PRIMO")
      } else {
         var i = 5
         while (i*i) <= num {
            if (num % i == 0) || ((num+2) % i == 0) {
               print ("NO ES PRIMO")
               break
            } else {
               i += 5
            }
         }
         print("ES PRIMO")
      }
   }
}

