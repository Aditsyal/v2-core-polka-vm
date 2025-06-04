# Uniswap AMM DEX Task List

## Phase 1: Setup and Research
- [ ] **Environment Setup**
  - [ ] Set up Node.js development environment
  - [ ] Install Hardhat or set up Remix IDE
  - [ ] Install Polkadot RPC plugin for deployment
  - [ ] Configure Westend testnet connection
  - [ ] Get Westend testnet tokens (WND)

- [ ] **Research and Analysis**
  - [ ] Study Uniswap V2 core repository structure
  - [ ] Analyze `UniswapV2Pair.sol` contract (~300 lines)
  - [ ] Identify factory-dependent code sections
  - [ ] Research PolkaVM limitations and constraints
  - [ ] Find existing ERC-20 tokens on Westend/Asset Hub

## Phase 2: Contract Development
- [ ] **Source Code Preparation**
  - [ ] Fork Uniswap V2 core repository
  - [ ] Extract `UniswapV2Pair.sol` and dependencies
  - [ ] Remove/modify factory-linked access controls
  - [ ] Hardcode token addresses for target pair (e.g., KSM/USDT)
  - [ ] Update contract constructor for standalone deployment

- [ ] **Contract Modifications**
  - [ ] Remove factory address dependency
  - [ ] Modify `initialize()` function if needed
  - [ ] Update access control modifiers
  - [ ] Ensure contract size is under PolkaVM limits (~6-10kB)
  - [ ] Add any necessary Polkadot-specific adjustments

- [ ] **Dependencies and Libraries**
  - [ ] Include required SafeMath library (if not using Solidity 0.8+)
  - [ ] Include UQ112x112 library for price calculations
  - [ ] Include IERC20 interface
  - [ ] Ensure all imports are properly resolved

## Phase 3: Local Testing
- [ ] **Contract Compilation**
  - [ ] Compile contracts with appropriate Solidity version
  - [ ] Verify contract bytecode size
  - [ ] Run static analysis for potential issues
  - [ ] Check for PolkaVM compatibility

- [ ] **Unit Testing**
  - [ ] Write tests for core AMM functions:
    - [ ] `mint()` - adding liquidity
    - [ ] `burn()` - removing liquidity
    - [ ] `swap()` - token swapping
    - [ ] `getReserves()` - querying pool state
  - [ ] Test edge cases and error conditions
  - [ ] Verify constant product formula (x * y = k)

## Phase 4: Deployment
- [ ] **Westend Deployment**
  - [ ] Deploy modified UniswapV2Pair contract to Westend
  - [ ] Verify deployment transaction and contract address
  - [ ] Verify contract code on block explorer
  - [ ] Document deployment gas costs

- [ ] **Contract Verification**
  - [ ] Verify contract source code (if block explorer supports it)
  - [ ] Test contract interface via block explorer
  - [ ] Ensure all functions are callable

## Phase 5: Functional Testing
- [ ] **Initial Setup**
  - [ ] Prepare test tokens (or use existing Westend tokens)
  - [ ] Get sufficient token balances for testing
  - [ ] Approve token spending for the pair contract

- [ ] **Liquidity Operations**
  - [ ] Add initial liquidity to the pool
  - [ ] Test additional liquidity provision
  - [ ] Test liquidity removal
  - [ ] Verify LP token minting/burning

- [ ] **Swap Operations**
  - [ ] Perform token A → token B swap
  - [ ] Perform token B → token A swap
  - [ ] Test different swap amounts
  - [ ] Verify price impact calculations
  - [ ] Test slippage protection

- [ ] **State Queries**
  - [ ] Query pool reserves
  - [ ] Check LP token total supply
  - [ ] Verify price calculations
  - [ ] Test view functions

## Phase 6: Performance Analysis
- [ ] **Gas Cost Analysis**
  - [ ] Measure deployment gas cost
  - [ ] Measure gas costs for each operation:
    - [ ] Adding liquidity
    - [ ] Removing liquidity
    - [ ] Token swaps
    - [ ] State queries
  - [ ] Compare with Ethereum mainnet costs

- [ ] **Performance Benchmarks**
  - [ ] Measure transaction confirmation times
  - [ ] Test contract execution limits
  - [ ] Document any PolkaVM-specific behaviors

## Phase 7: Documentation
- [ ] **Technical Documentation**
  - [ ] Create comprehensive README
  - [ ] Document contract modifications made
  - [ ] List deployment steps
  - [ ] Include contract ABI and addresses

- [ ] **Testing Documentation**
  - [ ] Document test scenarios and results
  - [ ] Include transaction hashes and screenshots
  - [ ] Create usage examples and scripts

- [ ] **Performance Report**
  - [ ] Gas cost comparison table
  - [ ] Performance metrics vs Ethereum
  - [ ] PolkaVM compatibility notes
  - [ ] Recommendations for optimization

## Phase 8: Repository and Deliverables
- [ ] **GitHub Repository**
  - [ ] Clean up and organize code
  - [ ] Add comprehensive README.md
  - [ ] Include deployment scripts
  - [ ] Add test files and results
  - [ ] Create proper git history with meaningful commits

- [ ] **Final Deliverables**
  - [ ] Deployed contract address on Westend
  - [ ] Public GitHub repository
  - [ ] Documentation package
  - [ ] Performance analysis report
  - [ ] Demo scripts or frontend (optional)

## Estimated Timeline
- **Phase 1-2**: 1 day (Setup and Development)
- **Phase 3-4**: 1 day (Testing and Deployment)
- **Phase 5-6**: 0.5 day (Functional Testing and Analysis)
- **Phase 7-8**: 0.5 day (Documentation and Cleanup)

**Total**: 3 days (MVP timeline as specified)

## Success Criteria
- [ ] Contract successfully deployed on Westend
- [ ] All core AMM functions working correctly
- [ ] Gas costs documented and compared
- [ ] Complete documentation package delivered
- [ ] Project demonstrates PolkaVM feasibility for DeFi 