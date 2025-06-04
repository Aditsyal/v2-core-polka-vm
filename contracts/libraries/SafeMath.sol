// SPDX-License-Identifier: MIT
pragma solidity =0.8.28;

// SafeMath is mostly unnecessary in 0.8.28 as it includes built-in overflow checks
// Only keeping what's absolutely necessary for backwards compatibility
library SafeMath {
    function add(uint x, uint y) internal pure returns (uint z) {
        z = x + y;
    }

    function sub(uint x, uint y) internal pure returns (uint z) {
        z = x - y;
    }

    function mul(uint x, uint y) internal pure returns (uint z) {
        z = x * y;
    }
}
