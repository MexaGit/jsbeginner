/**
 * @param {string} s
 * @return {boolean}
 */
var isValid = function (s) {
    const arr = [];
    for (let i = 0; i < s.length; i++) {
        let char = s.charAt(i);
        switch (char) {
            case '(': arr.push(')')
                break;
            case '{': arr.push('}')
                break;
            case '[': arr.push(']')
                break;
            default: if (char !== arr.pop()) return false
        }
    }
    return arr.length === 0
};

console.log(isValid("[][]{}"))