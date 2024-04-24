function reverse(str) {
    // add whatever parameters you deem necessary - good luck!
    if (str.length <= 1) {
        return str; // Base case: return the same string if it is empty or has only one character
    }
    return reverse(str.substring(1)) + str.charAt(0); // Recursive case: reverse the substring of the string from the second character to the end, and append the first character
}