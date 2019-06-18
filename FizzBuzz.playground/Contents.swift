import UIKit

/*
Author: Daniel Favano
Description: This is homework assignment 3 in part 1 of the Swift course offered by pirple.com. It is FizzBuzz in Swift, with the extra credit for printing prime numbers
*/

for number in 1...100 {
    
    /*
    Prime detection logic - since prime numbers are only divisble by themself we collect how many numbers are divisible in the divisors var and if we get more than 1 (besides 1) after the loop
    completes then we know its not prime.
     */
    if(number != 1){
        var divisors : Int = 0
        for divisor in 2...number {
            if(number % divisor == 0){
                divisors += 1
                
                //If there are already more than one divisor then we know its not prime and we can break
                if(divisors > 1){
                    break
                }
            }
        }
        
        //If there are only 1 divisors its prime
        if(divisors == 1){
            print("\(number) is prime\n")
            divisors = 0
        }
    }
    
    if(number % 3 == 0 && number % 5 == 0){
        //Print for debug purposes comment out if not needed
        print("\(number) is divisible by 3 and 5 evenly")
        print("FizzBuzz\n")
        continue
    }
    
    if(number % 3 == 0){
        //Print for debug purposes comment out if not needed
        print("\(number) is divisible by 3 evenly")
        print("Fizz\n")
        continue
    }
    
    if(number % 5 == 0){
        //Print for debug purposes comment out if not needed
        print("\(number) is divisble by 5 evenly")
        print("Buzz\n")
        continue
    }
}
