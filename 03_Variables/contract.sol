//Always start with your compiler version
pragma solidity ^0.8.4;

//Define your contract with a proper name. It is always recommend to follow naming convention. Do not give any short name
//such as "a", "b" etc. For testing , it is ok, but for production it is always good to have proper naming convention
//In this example, we are just saying "Hello" to the world.. So HelloWorld.

//contract name alway starts with contract
contract HelloWorld{

    //Data Types
    //Boolean
    bool public isVerified = false;
    //address
    address public whoIsDeployer = msg.sender;
    //integer
    uint8 public age=40;
    //string
    string public name="John";
    //bytes
    bytes1 public gender="m";
    
    //State Variable
    //This variable is state of the blockchain. For instance, declaring variable outside of function, will store some value in blockchain
    //Here gender is a variable declared as Public and ofcourse "String" type
    string public fullname="male";

    //Local Variable
    //This variable will be defined inside a function and it will not impact the blockchain
    function testing() public returns(uint256,address){
        //local variable firstname
        string memory firstname ="John";

        //local variable timevalue but mapped with global variable block.timestamp
        uint256 timevalue = block.timestamp;

        //local variable deployer but mapped with global variable msg.sender
        
        address deployer = msg.sender;
        return (timevalue,deployer);
    }

    //Global Variable
    //this is mostly provided in runtime by blockchain, such as msg.sender, block.timestamp, transaction hash, msg.value etc.,

}

//Compiler version plays a key role, higher the version, better is supports latest features. Else you will end up facing
//deprecation issue. So always good to choose the latest compiler version

//Read through this : https://docs.soliditylang.org/en/v0.8.13/using-the-compiler.html