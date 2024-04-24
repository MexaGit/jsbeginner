/**
 * Definition for singly-linked list.
 * function ListNode(val, next) {
 *     this.val = (val===undefined ? 0 : val)
 *     this.next = (next===undefined ? null : next)
 * }
 */
/**
 * @param {ListNode} list1
 * @param {ListNode} list2
 * @return {ListNode}
 */
var mergeTwoLists = function(list1, list2) {
    // Create a copy of list2 to avoid modifying the original array
    // let mergedList = [...list2];

    for (let i = 0; i < list1.length; i++) {
        // Push elements from list1 into the mergedList
        list2.push(list1[i]);
    }

    const let2 = list2.sort((a, b) => a - b);

    return let2;
};

console.log(mergeTwoLists([1,2,4],[1,3,4]))