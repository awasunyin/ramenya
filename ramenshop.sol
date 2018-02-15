pragma solidity ^0.4.17;

contract RamenShop {

    // event when a ramen gets added to menu
    event NewRamen(uint id, string name, uint _id);

    // 0 to 4,294,967,295 ramenshops worldwide
    uint32 shopId;
    string shopName;

    struct Ramen {
        string name;        
        uint ramenId;
    }

    // plural of ramen is ramen
    Ramen[] public ramenMenu;

    // mappings
    mapping(uint => address) public ramenToShop;
    mapping(address => uint) shopRamenCount;

    // create ramen and pushes to array of ramen
    function _createRamen(string _name, uint _id) private {
        uint id = ramenMenu.push(Ramen(_name, _id)) - 1;
        ramenToShop[id] = msg.sender;
        shopRamenCount[msg.sender];
        NewRamen(id, _name, _id);
    }

    // generate random dna
    // this function will view some of our contract's variables but not modify them
    function _generateRandomId(string _str) private view returns(uint) {
        uint rand = uint(keccak256(_str));
        return rand;
    }

    // adds a randomly generated ramen to the menu
    function _addRandomRamenToMenu(string _name) private {
        require(shopRamenCount[msg.sender] == 0);
        uint randId = _generateRandomId(_name);
        _createRamen(_name, randId);
    }
    
}