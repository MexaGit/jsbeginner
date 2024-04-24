var fibo = () => {
    // Initialize the array with the first two Fibonacci numbers
    let arr = [0, 1];
    for (let i = 2; i < 30; i++) {
        // Calculate the next Fibonacci number by summing the previous two
        arr[i] = arr[i - 1] + arr[i - 2]; 
        // console.log(arr[i - 1], arr[i - 2])
    } 
    // Return the array containing the Fibonacci numbers
    return arr;  
}
console.log(fibo())


