pragma solidity ^0.4.17;

import "./ramenhelper.sol";

// TODO: RamenInterface? (hypothetically, a ramen contract now owned)

contract RamenLab is RamenHelper {
    /* the ramen world is vast, there are so many types of ramen dishes
    but for the sake of simplicity, the ramen shop offers the most 
    common type of ramen with warm broth: 
    http://www.pepper.ph/the-four-parts-of-a-ramen-bowl/ */

    // NOTE: Probably doesn't make sense to store on the blockchain
    // the available ramen with all the combinations

    struct Noodles {
        string firmness;
    }

    Noodles[] firmnessTypes;

    // hard coded some properties
    function _addFirmnessTypes(string _name) private returns(Noodles[]) {
        firmnessTypes[0] = "soft";
        firmnessTypes[1] = "medium";
        firmnessTypes[2] = "firm";
        return firmnessTypes;
    }

    struct Both {
        string broth;
    }

    Broth[] availableBroths;

    function _addBroth(string _broth) private returns(Broth[]) {
        availableBroths[0] = "tonkotsu";
        availableBroths[1] = "shio";
        availableBroths[2] = "miso";
    }

    //TODO: continue editing this

    struct Flavouring {
        string flavour;
    }

    Flavouring[] availableFlavourings;

    function _addFlavouring(string _flavour) private returns(Broth[]) {
        availableFlavourings[0] = "tonkotsu";
        availableFlavourings[1] = "shio";
        availableFlavourings[2] = "miso";
    }

    struct Topping {
        string topping;
    }

    Topping[] availableToppings;

    function _addBroth(string _broth) private returns(Broth[]) {
        availableToppings[0] = "tonkotsu";
        availableToppings[1] = "shio";
        availableToppings[2] = "miso";
    }

    function getRamen(uint _id) external view returns (
        string ramenName,
        string ramenNoodles,
        string ramenBroth,
        string ramenFlavouring,
        string ramenTopping1,
        string ramenTopping2

    ) { 
        Ramen storage ramen = ramen[_id];
        
        ramenName = 
        ramenNoodles =
        ramenBroth =
        ramenFlavouring =
        ramenTopping1 =
        ramenTopping2 =

    }
}