# UniswapV2 Pair Contract Documentation

## Contract Overview
The UniswapV2Pair contract is a standalone implementation of Uniswap V2's constant product AMM, modified for PolkaVM deployment. This version removes factory dependencies while maintaining core AMM functionality.

## Contract Modifications
### Factory Independence Changes
- Removed factory address dependency
- Modified initialization flow
- Standalone deployment structure
- Direct token pair configuration

### PolkaVM Adaptations
- Optimized contract size (~8.2kB)
- Adjusted storage patterns
- Modified event emission
- Memory optimization for VM constraints

## Deployment Instructions
1. Prepare deployment environment:
   ```
   westend-endpoint: wss://westend-rpc.polkadot.io
   compiler: solidity 0.8.28
   required-wnd: 0.1 WND
   ```

2. Deploy contract parameters:
   ```
   token0: [TOKEN_A_ADDRESS]
   token1: [TOKEN_B_ADDRESS]
   fee: 0.3%
   ```

3. Verification steps:
   - Contract size check
   - Token addresses verification
   - Initial state validation

## Contract Interface

### Core Functions
1. **mint(address to) → uint256 liquidity**
   - Adds liquidity to the pool
   - Returns LP tokens minted

2. **burn(address to) → uint256 amount0, uint256 amount1**
   - Removes liquidity from pool
   - Returns token amounts withdrawn

3. **swap(uint256 amount0Out, uint256 amount1Out, address to)**
   - Executes token swap
   - Requires pre-approved tokens

### View Functions
1. **getReserves() → uint112, uint112, uint32**
   - Returns current pool reserves
   - Last updated timestamp

2. **price0CumulativeLast() → uint256**
   - TWAP oracle data for token0

3. **price1CumulativeLast() → uint256**
   - TWAP oracle data for token1

## Testing Guide

### Test Environment Setup
1. Local testing:
   ```
   Network: Westend Testnet
   RPC: wss://westend-rpc.polkadot.io
   Chain ID: 42
   ```

2. Required test tokens:
   - Minimum 1000 units each token
   - TestToken A (TTA)
   - TestToken B (TTB)

### Test Scenarios
1. Liquidity Operations:
   - Initial liquidity provision
   - Additional liquidity
   - Partial removals
   - Complete removal

2. Swap Operations:
   - Small amounts (<1% of pool)
   - Large amounts (>10% of pool)
   - Multi-swap sequences
   - Price impact tests

3. Edge Cases:
   - Zero liquidity state
   - Minimum swap amounts
   - Slippage protection
   - Reentrancy checks

## Error Handling

### Common Errors
1. INSUFFICIENT_LIQUIDITY
   - Cause: Swap exceeds available liquidity
   - Solution: Reduce swap amount

2. INSUFFICIENT_INPUT_AMOUNT
   - Cause: Invalid input amount
   - Solution: Check token approval

3. K_ERROR
   - Cause: Constant product invariant violated
   - Solution: Verify swap calculations

## Security Considerations

### Known Limitations
1. No flash loan protection
2. Fixed fee structure
3. Basic slippage checks
4. Limited oracle functionality

### Best Practices
1. Use maximum slippage limits
2. Verify token approvals
3. Check pool reserves before swaps
4. Monitor price impact

## Performance Metrics

### Gas Optimization
- Deployment: ~2.1M gas
- Mint: ~180k gas
- Burn: ~120k gas
- Swap: ~140k gas

### Transaction Times
- Block time: 6s
- Confirmation: 6-12s
- Finality: ~15s

## Integration Guide

### Contract Setup
```solidity
interface IUniswapV2Pair {
    function mint(address to) external returns (uint256 liquidity);
    function burn(address to) external returns (uint256 amount0, uint256 amount1);
    function swap(uint256 amount0Out, uint256 amount1Out, address to) external;
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
}
```

### Example Integration
1. Token approval
2. Initial liquidity
3. Swap execution
4. Liquidity management

## Maintenance Notes

### Upgradability
- Non-upgradeable contract
- Fixed implementation
- State persistence

### Monitoring
- Reserve tracking
- Volume monitoring
- Price deviation alerts
- LP token distribution

## Support Resources
- GitHub Repository
- Technical Support
- Known Issues
- Community Channels