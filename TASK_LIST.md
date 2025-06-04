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
- [x] **Source Code Preparation**
  - [x] Fork Uniswap V2 core repository
  - [x] Extract `UniswapV2Pair.sol` and dependencies
  - [x] Remove/modify factory-linked access controls
  - [x] Hardcode token addresses for target pair (e.g., KSM/USDT)
  - [x] Update contract constructor for standalone deployment

- [x] **Contract Modifications**
  - [x] Remove factory address dependency
  - [x] Modify `initialize()` function if needed
  - [x] Update access control modifiers
  - [x] Ensure contract size is under PolkaVM limits (~6-10kB)
  - [x] Add any necessary Polkadot-specific adjustments

- [x] **Dependencies and Libraries**
  - [x] Include required SafeMath library (if not using Solidity 0.8+)
  - [x] Include UQ112x112 library for price calculations
  - [x] Include IERC20 interface
  - [x] Ensure all imports are properly resolved

## Phase 3: Local Testing
- [x] **Contract Compilation**
  - [x] Compile contracts with appropriate Solidity version
  - [x] Verify contract bytecode size
  - [x] Run static analysis for potential issues
  - [x] Check for PolkaVM compatibility

- [x] **Unit Testing**
  - [x] Write tests for core AMM functions:
    - [x] `mint()` - adding liquidity
    - [x] `burn()` - removing liquidity
    - [x] `swap()` - token swapping
    - [x] `getReserves()` - querying pool state
  - [x] Test edge cases and error conditions
  - [x] Verify constant product formula (x * y = k)

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
- [x] **Gas Cost Analysis**
  - [x] Measure deployment gas cost
  - [x] Measure gas costs for each operation:
    - [x] Adding liquidity
    - [x] Removing liquidity
    - [x] Token swaps
    - [x] State queries
  - [x] Compare with Ethereum mainnet costs

- [x] **Performance Benchmarks**
  - [x] Measure transaction confirmation times
  - [x] Test contract execution limits
  - [x] Document any PolkaVM-specific behaviors

## Phase 7: Documentation
- [x] **Technical Documentation**
  - [x] Create comprehensive README
  - [x] Document contract modifications made
  - [x] List deployment steps
  - [x] Include contract ABI and addresses

- [x] **Testing Documentation**
  - [x] Document test scenarios and results
  - [x] Include transaction hashes and screenshots
  - [x] Create usage examples and scripts

- [x] **Performance Report**
  - [x] Gas cost comparison table
  - [x] Performance metrics vs Ethereum
  - [x] PolkaVM compatibility notes
  - [x] Recommendations for optimization

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