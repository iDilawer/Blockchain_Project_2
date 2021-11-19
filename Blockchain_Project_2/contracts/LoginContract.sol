pragma solidity >=0.4.22 <0.9.0;
contract SimpleSmartContract {
    string public name;
    string public role;
    string public pswd;

    constructor() public{
        name = 'Landlord';
        role = 'landlord';
        pswd = 'password';
    }

    function getName() public view returns (string memory) {
        return (name);
    }

    function setName(string memory new_Name) public {
        name = new_Name;
    }

    function getRole() public view returns (string memory) {
        return (role);
    }

    function setRole(string memory new_Role) public {
        role = new_Role;
    }

    function getPswd() public view returns (string memory) {
        return (pswd);
    }

    function setPswd(string memory new_pswd) public {
        pswd = new_pswd;
    }
}