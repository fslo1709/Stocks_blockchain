pragma solidity ^0.4.21;

contract StockMarket{

	string private symbol;
	mapping(address => uint) StockOwned;

	enum OrderSide {BUY, SELL}
	enum OrderType {LIMIT, MARKET}
	enum OrderAvailability {OPEN, FOK, IOC} //FOK = fill or kill, IOC = immediate or cancel

	struct Order{
		uint timestamp;
		address marketclient;
		uint quality;
		uint price;

		OrderSide orderside;
		OrderType ordertype;
		OrderAvailability ordeavailability;
	}
	uint private marketPrice;

	Order[] private bid;
	Order[] private asks;
}

