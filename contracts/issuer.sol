pragma solidity ^0.4.24;
library SafeMath {

  /**
  * @dev Multiplies two numbers, throws on overflow.
  */
  function mul(uint256 a, uint256 b) internal pure returns (uint256) {
    if (a == 0) {
      return 0;
    }
    uint256 c = a * b;
    require(c / a == b);
    return c;
  }

  /**
  * @dev Integer division of two numbers, truncating the quotient.
  */
  function div(uint256 a, uint256 b) internal pure returns (uint256) {
    // assert(b > 0); // Solidity automatically throws when dividing by 0
    // uint256 c = a / b;
    // assert(a == b * c + a % b); // There is no case in which this doesn't hold
    return a / b;
  }

  /**
  * @dev Subtracts two numbers, throws on overflow (i.e. if subtrahend is greater than minuend).
  */
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
    require(b <= a);
    return a - b;
  }

  /**
  * @dev Adds two numbers, throws on overflow.
  */
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
    uint256 c = a + b;
    require(c >= a);
    return c;
  }
}


contract AbstractTokenTRC21 {
    function issuer() public view returns (address);
}
contract TRC21Issuer {
    using SafeMath for uint256;
    uint256 _minCap;
    address[] _tokens;
    mapping(address => uint256) tokensState;
    address issuer;

	event Apply(address indexed issuer, address indexed token, uint256 value);
	event Charge(address indexed supporter, address indexed token, uint256 value);

    constructor (uint256 value) public {
        issuer = msg.sender;
        _minCap = value;
    }

    function minCap() public view returns(uint256) {
        return _minCap;
    }

    // Adjust minimal cap if high price
    function setminCap(uint256 value) public returns(uint256) {
        require(issuer == msg.sender,"Only issuer can do this");
        return _minCap = value;
    }

    function tokens() public view returns(address[]) {
        return _tokens;
    }

    function getTokenCapacity(address token) public view returns(uint256) {
        return tokensState[token];
    }

    modifier onlyValidCapacity(address token) {
        require(token != address(0));
        require(msg.value >= _minCap);
        _;
    }

    function apply(address token) public payable onlyValidCapacity(token) {
        AbstractTokenTRC21 t = AbstractTokenTRC21(token);
        require(t.issuer() == msg.sender);
        _tokens.push(token);
        tokensState[token] = tokensState[token].add(msg.value);
        emit Apply(msg.sender, token, msg.value);
    }

    function charge(address token) public payable onlyValidCapacity(token) {
        tokensState[token] = tokensState[token].add(msg.value);
        emit Charge(msg.sender, token, msg.value);
    }

}
