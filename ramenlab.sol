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
    struct Ramen {
        string name;
        string topping;
    }

    // plural of ramen is ramen
    Ramen[] ramen;

    function _addRamen(Ramen storage _ramen) internal {
  // do stuff with _zombie

    }   
}