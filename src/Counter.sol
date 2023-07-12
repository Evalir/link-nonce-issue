// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library A {
    function increment(uint256 number) external pure returns (uint256) {
        return number + 1;
    }
}

library B {
    function subtract(uint256 number) external pure returns (uint256) {
        return number - 1;
    }
}

library C {
    function double(uint256 number) external pure returns (uint256) {
        return number * 2;
    }
}

library D {
    function half(uint256 number) external pure returns (uint256) {
        return number / 2;
    }
}

library E {
    function pow(uint256 number, uint256 exponent)
        external
        pure
        returns (uint256)
    {
        return number**exponent;
    }
}

contract Counter {
    uint256 public number;

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }

    function add(uint256 num) external returns (uint256) {
        number = num;
        return A.increment(num);
    }

    function sub(uint256 num) external returns (uint256) {
        number = num;
        return B.subtract(num);
    }

    function mul(uint256 num) external returns (uint256) {
        number = num;
        return C.double(num);
    }

    function div(uint256 num) external returns (uint256) {
        number = num;
        return D.half(num);
    }

    function pow(uint256 num, uint256 exponent) external returns (uint256) {
        number = num;
        return E.pow(num, exponent);
    }
}
