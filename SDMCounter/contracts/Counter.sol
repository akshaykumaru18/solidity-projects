pragma solidity 0.8.19;

contract Counter{
    int public count = 0;

    function increment() public  returns (int) {
        count = count + 1;
        return count;
    }

     function decrement() public  returns (int) {
        count = count - 1;
        return count;
    }

    function getCount() public view returns (int) {
        return count;
    }
}