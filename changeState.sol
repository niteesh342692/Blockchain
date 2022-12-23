pragma solidity ^0.5.9;

contract changeState
{
	enum S {Init, Reg, Vote, Done}
	S public st;
	uint public timeNow;
	uint startTime;

	constructor()  public
	{
		timeNow=now;
		st=S.Init;
	}

	function disp() public view returns (uint,S)
	{
		return (startTime,st);
	}

	function cs() public
	{
		timeNow=now;
		if(timeNow>startTime+10 seconds)
		{
			startTime=timeNow;
			if(st==S.Init)
			{
				st=S.Reg;
				disp();
				return;
			}
			else if(st==S.Reg)
			{
				st=S.Vote;
				disp();
				return;
			}
			else 
			{
				st=S.Done;
				disp();
				return;
			}
		}
		disp();
		return;
	}
}
