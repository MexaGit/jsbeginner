// Example 1: Counting Characters in a String
// Step 1: Initialize an Empty Hashmap
const charCountMap = new Map();
// Step 2: Iterate through the String
const inputString = "hello";
for (const char of inputString) {
    // Step 3: Update Hashmap with Character Frequencies
    if (charCountMap.has(char)) {
        charCountMap.set(char, charCountMap.get(char) + 1);
    } else {
        charCountMap.set(char, 1);
    }
}
// Step 4: View the Result
console.log(charCountMap);


// Example 2: Storing Key-Value Pairs
// Step 1: Initialize an Empty Hashmap
const personInfo = new Map();
// Step 2: Update Hashmap with Key-Value Pairs
personInfo.set("name", "John");
personInfo.set("age", 25);
personInfo.set("city", "New York");
// Step 3: Access Values
for(const [key, value] of personInfo){
    console.log(`${value}`)
    // console.log(personInfo.get("name")); // Output: John
    // console.log(personInfo.get("age"));  // Output: 25
    // console.log(personInfo.get("city")); // Output: New York
}



// Example 3: Checking for Duplicate Elements
// Step 1: Initialize an Empty Hashmap
const uniqueNumbers = new Map();
// Step 2: Check for Duplicate Elements
const numbers = [1, 2, 3, 4, 1, 2, 3, 5];
for (const number of numbers) {
    // Step 3: Update Hashmap
    // checks if the hashmap does not already have the key represented by the current value of number. 
    // If the condition is true, it means that the number is not present in the hashmap, and the code inside the if block will be executed.
    if (!uniqueNumbers.has(number)) {
        uniqueNumbers.set(number, true);
    }
}
// Step 4: View the Result
console.log(Array.from(uniqueNumbers.keys())); // Output: [1, 2, 3, 4, 5]


// Hash function properties:
// * Make s use of all info provided by Key
// * Uniformly distributes output across table
// * Maps similar keys to very different hash values
// * Uses only very fast operations