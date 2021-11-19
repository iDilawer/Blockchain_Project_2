pragma solidity >=0.4.22 <0.9.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SimpleSmartContract.sol";

contract TestSimpleSmartContract {
    //The address of the simplesmartcontract to be tested
    //the SimpleSmartContract has an address on blockchain
    //During testing, it runs on a dummy blockchain.
    SimpleSmartContract scc = SimpleSmartContract(DeployedAddresses.SimpleSmartContract());
    //Testing the constructor and getName function
    //The constructor initializes name values to 'my name'
    //If the getName function returns correct name it means it was correctly set by the constructor
    function testConstructor_and_getName() public {
        string memory returnedName = scc.getName();
        Assert.equal(returnedName, 'my name', "getName function should return 'my name'.");
    }

    function testSetName() public {
        scc.setName('new_Name');
        string memory newSetName = scc.getName();
        Assert.equal(newSetName, 'new_Name', "setName function should return 'new_Name'.");
    }

}