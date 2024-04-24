/** https://leetcode.com/problems/check-if-the-sentence-is-pangram/
 * @param {string} sentence
 * @return {boolean}
 */
let checkIfPangram = function (sentence) {
    const alphabetic = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];
    let words = [...new Set(sentence.split('').sort())];
    if (words.length === 26) {
        //      if (words.some(r => alphabetic.includes(r))) 
        if (words => alphabetic.includes(words)) {
            return true;
        } else {
            return false;
        }
    }
    return false;
};

console.log(checkIfPangram("thequickbrownfoxjumpsoverthelazydog"));
console.log(checkIfPangram("thequg"));

//Information
/* The Set object lets you store unique values of any type, whether primitive values or object references.
https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Set 
some() ejecuta la función callback una vez por cada elemento presente en el array hasta que encuentre uno donde callback retorna un valor verdadero (true).
https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Global_Objects/Array/some
El método includes() determina si una matriz incluye un determinado elemento, devuelve true o false según corresponda.
https://developer.mozilla.org/es/docs/Web/JavaScript/Reference/Global_Objects/Array/includes
*/