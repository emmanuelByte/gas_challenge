// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract gasChallenge {
    // Fixed-Size Array Technique
    uint[10] numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    //Function to check for sum of array
    function getSumOfArray() public view returns (uint256) {
        uint sum = 0;
        for (uint i = 0; i < numbers.length; i++) {
            sum += numbers[i];
        }
        return sum;
    }

    function notOptimizedFunction() public {
        for (uint i = 0; i < numbers.length; i++) {
            numbers[i] = 0;
        }
    }

    function optimizedFunction() public {
        // Caching State Variable
        uint256 numbersLength = numbers.length;

        // Using Unchecked Block
        unchecked {
            // For Loop Increment Syntax
            for (uint i = 0; i < numbersLength; ++i) {
                numbers[i] = 0;
            }
        }
    }
}
