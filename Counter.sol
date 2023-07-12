// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

library A {
    function increment(uint256 number, uint256 number2) external pure returns (uint256) {
        return number + number2;
    }
}

library B {
    function subtract(uint256 number) external pure returns (uint256) {
        return number - 1;
    }
}

library C {
    function double(uint256 number) external pure returns (uint256) {
        return A.increment(number, 0) + A.increment(number, 0);
    }
}

library D {
    function half(uint256 number) external pure returns (uint256) {
        return number / 2;
    }

    function sub2(uint256 number) external pure returns (uint256) {
        return B.subtract(number);
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
    function quadruple(uint256 number) external pure returns (uint256) {
        return C.double(number) + C.double(number);
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
        return A.increment(num, 1);
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

    function sub2(uint256 num) external returns (uint256) {
        number = num;
        return D.sub2(num);
    }

    function quadruple(uint256 num) external returns (uint256) {
        number = num;
        return E.quadruple(num);
    }
}
