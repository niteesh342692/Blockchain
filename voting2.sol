pragma solidity ^0.8.6;


contract Voting {

  
  mapping (bytes32 => uint256) public votesReceived;
  

  string[] list;
  bytes32[] public candidateList;
//  bytes32 public w;

  constructor(string[] memory l) public {
    list = l;
    conv();
  }



    
  function conv() private
  {
    for(uint i=0;i<list.length;i++)
    {
      candidateList.push(bytes32(bytes(list[i])));
    }
  }   

  function totalVotesFor(bytes32 candidate) view public returns (uint256) {
    require(validCandidate(candidate));
    return votesReceived[candidate];
  }


  function voteForCandidate(bytes32 candidate) public {
    require(validCandidate(candidate));
    votesReceived[candidate] += 1;
  }

  function validCandidate(bytes32 candidate) view public returns (bool) {
    for(uint i = 0; i < candidateList.length; i++) {
      if (candidateList[i] == candidate) {
        return true;
      }
    }
    return false;
  }

  function winner() public view returns (bytes32, uint256)
  {
    uint256 m=0;
    bytes32 w;


    for(uint i=0;i<candidateList.length;i++)
    {
      if(m<votesReceived[candidateList[i]])
      {
        m=votesReceived[candidateList[i]];
        w=candidateList[i];
      }
    }
    return (w,m);

  }
}
