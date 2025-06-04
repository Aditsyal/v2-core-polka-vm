# UniswapV2 Smart Contract Pair for PolkaVM

A standalone implementation of Uniswap V2's constant product AMM, optimized for PolkaVM deployment.

## Overview
This project implements a factory-independent version of the Uniswap V2 pair contract, specifically modified for deployment on PolkaVM. It maintains core AMM functionality while removing dependencies on the factory contract.

## Key Features
- Standalone deployment structure
- Direct token pair configuration
- PolkaVM-optimized (~8.2kB contract size)
- Modified storage patterns
- Built for Westend testnet

## Quick Start

### Prerequisites
- Node.js environment
- Westend endpoint: `wss://westend-rpc.polkadot.io`
- Minimum 0.1 WND for deployment

### Installation
```bash
yarn install
yarn compile
```

### Deployment
1. Configure your Westend endpoint
2. Prepare token addresses
3. Deploy with:
```bash
yarn deploy
```

## Contract Interface

### Core Functions
```solidity
function mint(address to) external returns (uint256 liquidity)
function burn(address to) external returns (uint256 amount0, uint256 amount1)
function swap(uint256 amount0Out, uint256 amount1Out, address to) external
function getReserves() external view returns (uint112, uint112, uint32)
```

## Gas & Performance

### Costs
- Deployment: ~2.1M gas
- Mint: ~180k gas
- Burn: ~120k gas
- Swap: ~140k gas

### Transaction Times
- Block time: 6s
- Confirmation: 6-12s
- Finality: ~15s

## Testing
```bash
yarn test
```

Test coverage includes:
- Liquidity operations
- Swap scenarios
- Edge cases
- Security checks

## Security Notes
- No flash loan protection
- Fixed 0.3% fee structure
- Basic slippage protection
- Standard reentrancy guards

## Documentation
For detailed documentation, see:
- [Technical Documentation](./DOCUMENTATION.md)
- [Gas Analysis](./GAS_ANALYSIS.md)
- [Performance Analysis](./PERFORMANCE_ANALYSIS.md)

## License
GPL-3.0
