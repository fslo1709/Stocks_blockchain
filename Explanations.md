
## Explanations regarding terminologies
Order is the instruction of either buying or selling an asset at a designated price on the market.

For this implementation, two types of orders are supported:
1. Limit orders: the trading action needs to be executed at the price-limit specified (by the agent) or at a better one.
2. Market orders: less restrictive, it's possibile for the order to be executed at the price of the market.

For this implementation, we assume that the market is to be always opened (continuous market), so that clients are able to enter orders. 
The market is opened at the time of simulation.

A trading action can have different availabilities, and in our implementation, these 3 availabilities are supported:
1. OPEN: the order can be executed or withdrawn in specified days from the day it was last updated.
2. Fill or Kill (FOK): the order must be executed in its entirety when submitted, otherwise it is dropped.
3. Immediate or Cancel (IOC): the order can be partially executed when submitted. Unfilled portions of the order is dropped.

## Explanations about the code
To model a Decentralized Stock Exchange, we develop a smart contract that acts like an augmented order book.

Each order (line 19) is defined as a structure in the smart contract containing information about:
1. The timestamp when the order was registered into the system
2. The address of the executant 
3. The quantity of transacted asset
4. The price at which the executant is willing to buy/sell
5. The order side of the order that specify whether the action is to buy or sell
6. The order type to specify the type of orders (Limit or Market)
7. The order availability to specify the type of availability (OPEN, FOK, IOC)











