pragma solidity >=0.4.22 <0.9.0;
contract applyRentontract {
    string public name;
    string public price;
    string public rent;

    constructor() public{
        name = 'Tenant 4';
        price = '$50000';
        rent = '$5000';
    }

    function getName() public view returns (string memory) {
        return (name);
    }

    function setName(string memory new_Name) public {
        name = new_Name;
    }

    function getPrice() public view returns (string memory) {
        return (price);
    }

    function setPrice(string memory new_price) public {
        price = new_price;
    }

    function getRent() public view returns (string memory) {
        return (rent);
    }

    function setRent(string memory new_rent) public {
        rent = new_rent;
    }
}