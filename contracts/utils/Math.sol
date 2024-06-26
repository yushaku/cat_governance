// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";

/**
 * @title Math
 * @dev Library for non-standard Math functions.
 */
library Math {
  using SafeMath for uint256;

  /**
   * @dev Return `ceil(numerator / denominator)`.
   */
  function divRoundUp(
    uint256 numerator,
    uint256 denominator
  ) internal pure returns (uint256) {
    if (numerator == 0) {
      // SafeMath will check for zero denominator
      return SafeMath.div(0, denominator);
    }
    return numerator.sub(1).div(denominator).add(1);
  }

  /**
   * @dev Returns the minimum between a and b.
   */
  function min(uint256 a, uint256 b) internal pure returns (uint256) {
    return a < b ? a : b;
  }

  /**
   * @dev Returns the maximum between a and b.
   */
  function max(uint256 a, uint256 b) internal pure returns (uint256) {
    return a > b ? a : b;
  }
}
