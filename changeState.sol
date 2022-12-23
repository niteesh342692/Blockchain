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

	function cs() public
	{
		timeNow=now;
		if(timeNow>startTime+10 seconds)
		{
			startTime=timeNow;
			if(st==S.Init)
			{
				st=S.Reg;
				return;
			}
			else if(st==S.Reg)
			{
				st=S.Vote;
				return;
			}
			else 
			{
				st=S.Done;
				return;
			}
		}
		return;
	}
}
