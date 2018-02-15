pragma solidity ^0.4.17;

import "./ramenhelper.sol";

contract RamenLab is RamenHelper {
    // the ramen world is vast, there are so many types of ramen dishes
    // but for the sake of simplicity, the ramen shop offers the most 
    // common type of ramen with warm broth:
    // http://www.pepper.ph/the-four-parts-of-a-ramen-bowl/

    struct Ramen {
        // tonkotsu, shoyu, shio, miso, 
        string ramenName;
        // a ramenId is composed by the keccak(ingredients)
        uint ramenId;
        // ramen price in wei
        uint ramenPrice;
    }

    // the plural of ramen is ramen
    Ramen [] public availableRamen;

    function _addRamenToMenu(string _name, uint _id, uint _price) private {
        availableRamen.push(Ramen(_name, _id, _price));
    }

    // Solidity also contains pure functions, which means you're not even 
    // accessing any data in the app

    function generateRamenId(string _name) private pure returns(uint) {
        uint id = uint(keccak256(_name));
        return id;
    }

     function generateRandomRamenId(string _str) private pure returns (uint) {
        uint rand = uint(keccak256(_str));
        return rand;
    }
}