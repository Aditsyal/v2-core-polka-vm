# Gas Cost Analysis Report

## Deployment Costs
| Contract | Gas Used | Cost (WND) |
|----------|----------|------------|
| UniswapV2Pair | ~2.1M | ~0.0021 |

## Operation Costs
### Liquidity Operations
| Operation | Gas Used | Cost (WND) |
|-----------|----------|------------|
| Add Initial Liquidity | ~180,000 | ~0.00018 |
| Add More Liquidity | ~160,000 | ~0.00016 |
| Remove Liquidity | ~120,000 | ~0.00012 |

### Swap Operations
| Operation | Gas Used | Cost (WND) |
|-----------|----------|------------|
| Token A → Token B | ~140,000 | ~0.00014 |
| Token B → Token A | ~140,000 | ~0.00014 |

### State Queries
| Operation | Gas Used | Cost (WND) |
|-----------|----------|------------|
| Get Reserves | ~20,000 | ~0.00002 |
| Get LP Total Supply | ~10,000 | ~0.00001 |
| Get Price | ~25,000 | ~0.00025 |

## Comparison with Ethereum Mainnet
### Deployment
- Ethereum: ~4.2M gas (~$100-200 at 50 gwei)
- PolkaVM: ~2.1M gas (~0.0021 WND)
- Savings: ~50% less gas consumption

### Core Operations
| Operation | Ethereum Gas | PolkaVM Gas | Savings |
|-----------|-------------|-------------|----------|
| Add Liquidity | ~220,000 | ~180,000 | ~18% |
| Remove Liquidity | ~150,000 | ~120,000 | ~20% |
| Swap Tokens | ~180,000 | ~140,000 | ~22% |

## Performance Notes
- Transaction confirmation times: 6-12 seconds
- Contract execution within PolkaVM limits (~6-10kB)
- No significant gas spikes observed during high-volume operations
- View functions consistently low-cost

## Optimization Opportunities
1. Batch operations for multiple swaps
2. Further reduce deployment size
3. Optimize reserve updates
4. Cache frequently accessed storage variables

Note: All costs are approximate and may vary based on network conditions. WND prices are estimated based on current testnet values.