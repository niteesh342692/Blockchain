pragma solidity ^0.5.17;
contract coin
{
	address public m;
	mapping (address => uint) public b;
	event Sent(address f,address t,uint a);

	constructor() public
	{
		m=msg.sender;
	}

	function mint(address r,uint a) public
	{
		if(msg.sender != m)
			return;
		b[r]+=a;
	}

	function Send(address r,uint a) public
	{
		if(b[msg.sender]<a)
			return;
		b[msg.sender]-=a;
		emit Sent(msg.sender,r,a);
	}
}
