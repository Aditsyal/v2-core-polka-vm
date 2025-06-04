# Uniswap-Style AMM DEX

**Track:** 🧭 Porting Existing Smart Contracts  
**Original Source:** https://github.com/Uniswap/v2-core  
**GitHub Issue:** https://github.com/polkadot-developers/hackathon-guide/issues/19

## Background

Uniswap V2 is the foundational constant-product Automated Market Maker (AMM) that pioneered permissionless token swaps on Ethereum. It operates using a simple but powerful liquidity pool design, where any two ERC-20 tokens can be paired and traded using the `x * y = k` formula. 

Bringing this core DeFi primitive to Kusama via PolkaVM would unlock local liquidity and make Polkadot a more attractive platform for DeFi developers accustomed to Ethereum tooling.

## Project Summary

Reimplement the core logic of a Uniswap V2 pair contract on Westend using PolkaVM. Focus on a single hardcoded liquidity pool (e.g. KSM/USDT) without router or factory logic. This port demonstrates feasibility, performance characteristics, and compatibility with Solidity contracts running on Polkadot.

## 💡 Value to Polkadot

Having a native AMM on PolkaVM enables simple token swaps using KSM or parachain assets directly on-chain, without relying on external parachains or bridges. It also serves as a foundational DeFi primitive for other smart contracts and users in the Polkadot ecosystem. This helps showcase PolkaVM's EVM compatibility and performance for real-world DeFi use cases.

## ✅ Feasibility (MVP in 3 Days)

- The Uniswap V2 pair contract is small and self-contained (~6–10kB)
- Factory + router logic can be skipped entirely (no CREATE calls)
- Only one pair needs to be deployed for demonstration purposes
- The project works within the known PolkaVM initcode size and runtime limits
- Deployable using Remix or Hardhat via the official Polkadot plugin

## ⚙️ Proposed Approach

1. Fork the Uniswap V2 `Pair.sol` contract from v2-core
2. Replace the token addresses with existing Westend or Asset Hub ERC-20s
3. Remove or disable any factory-linked access control modifiers
4. Adjust internal swap logic and fee calculations if necessary (optional)
5. Deploy to Westend using Remix or Hardhat with the Polkadot RPC plugin
6. Use simple scripts or manual calls via Remix to:
   - Add initial liquidity
   - Perform swaps
   - Query reserves and test balances
7. Document performance and cost vs Ethereum deployment

## 📦 Deliverables

- Deployed contract address on Westend
- GitHub repo with modified source code
- README with:
  - Link to original contract
  - Deployment steps
  - Gas cost comparison
  - Screenshots or logs of test swaps

## Labels

- `kudos` - Available on the Kudos Platform: https://www.morekudos.com/
- `port-existing-dapp` - Kusama hackathon track 1
- `kusama` - Kusama hackathon track 1

---

*Source: [Polkadot Developers Hackathon Guide Issue #19](https://github.com/polkadot-developers/hackathon-guide/issues/19)* 