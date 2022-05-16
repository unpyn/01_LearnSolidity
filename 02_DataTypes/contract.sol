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

}

//Compiler version plays a key role, higher the version, better is supports latest features. Else you will end up facing
//deprecation issue. So always good to choose the latest compiler version

//Read through this : https://docs.soliditylang.org/en/v0.8.13/using-the-compiler.html