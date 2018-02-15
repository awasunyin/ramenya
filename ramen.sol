pragma solidity ^0.4.17;

import "./ramenhelper.sol";

contract RamenShop {

    // 0 to 4,294,967,295 ramenshops worldwide
    uint32 shopId;
    string shopName;

    struct Ramen {

        // composition of all ramen ingredients
        string ramenName;
        // a ramenId is composed by the keccak(ingredients)
        uint ramenId;
        // ramen price in wei
        uint ramenPrice;
    }

    struct Ingredients {
        // according to pepper, a ramen bowl is composed by four main elements:
        // http://www.pepper.ph/the-four-parts-of-a-ramen-bowl/
        string ramenNoodles;
        string ramenBroth;
        string ramenFlavoring;
        // to simplify, we gonna accept only 2 toppings
        string ramenTopping1;
        string ramenTopping2;
    }

    // the pural of ramen is ramen
    Ingredients[] public ingredients;
    Ramen[] public availableRamen; 

    // add ramen to the menu
    function _addRamenToMenu(string _name, uint _id, uint _price) private {
        availableRamen.push(Ramen(_name, _id, _price));
    }

    /* function _generateRamenDescription(string _noodles, string _broth, string _flavouring, string _topping1, string _topping2) private returns (string) {
        ingredients.push(Ingredients(_noodles, _broth, _flavouring, _topping1, _topping2));
        string description = (_noodles, _broth, _flavouring, _topping1, _topping2);
        return description;
    }

    function createRandomRamen(string _name) private {
        uint randId = _generateRandomId(_name);
        _addRamenToMenu(_name, randId);
    }

     function _generateRandomId(string _str) private view returns (uint) {
        uint rand = uint(keccak256(_str));
        return rand;
    }*/
}