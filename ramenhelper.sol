pragma solidity ^0.4.17;


contract RamenHelper {

    // solidity does not support in-built string concatenation yet
    // these functions' source is: 
    // https://ethereum.stackexchange.com/questions/729/how-to-concatenate-strings-in-solidity
    function strConcat(string _a, string _b, string _c, string _d, string _e, string _f) internal returns (bytes){
        bytes memory _ba = bytes(_a);
        bytes memory _bb = bytes(_b);
        bytes memory _bc = bytes(_c);
        bytes memory _bd = bytes(_d);
        bytes memory _be = bytes(_e);
        bytes memory _bf = bytes(_f);

        string memory abcdef = new string(_ba.length + _bb.length + _bc.length + _bd.length + _be.length + _bf.length);
        bytes memory babcdef = bytes(abcdef);
        uint k = 0;
        for (uint i = 0; i < _ba.length; i++) babcdef[k++] = _ba[i];
        for (i = 0; i < _bb.length; i++) babcdef[k++] = _bb[i];
        for (i = 0; i < _bc.length; i++) babcdef[k++] = _bc[i];
        for (i = 0; i < _bd.length; i++) babcdef[k++] = _bd[i];
        for (i = 0; i < _be.length; i++) babcdef[k++] = _be[i];
        for (i = 0; i < _bf.length; i++) babcdef[k++] = _bf[i];

        return babcdef;
    }

     function strConcat(string _a, string _b, string _c, string _d, string _e) internal returns (bytes) {
        return strConcat(_a, _b, _c, _d, _e, "");
    }

    function strConcat(string _a, string _b, string _c, string _d) internal returns (bytes) {
        return strConcat(_a, _b, _c, _d, "", "");
    }

    function strConcat(string _a, string _b, string _c) internal returns (bytes) {
        return strConcat(_a, _b, _c, "", "", "");
    }

    function strConcat(string _a, string _b) internal returns (bytes) {
        return strConcat(_a, _b, "", "", "", "");
    }
}