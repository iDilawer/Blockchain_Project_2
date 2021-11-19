pragma solidity >=0.4.22 <0.9.0;
contract SimpleSmartContract {
    string public tenantname;
    string public area;
    string public location;
    string public price;

    constructor() public{
        tenantname = 'Tenant 4';
        area = 'Delhi';
        location = 'India';
        price = '$30000';
    }

    function getName() public view returns (string memory) {
        return (tenantname);
    }

    function setName(string memory new_Name) public {
        tenantname = new_Name;
    }

    function getArea() public view returns (string memory) {
        return (area);
    }

    function setArea(string memory new_Area) public {
        area = new_Area;
    }

    function getLocation() public view returns (string memory) {
        return (location);
    }

    function setLocation(string memory new_loc) public {
        location = new_loc;
    }

    function getPrice() public view returns (string memory) {
        return (price);
    }

    function setPrice(string memory new_price) public {
        price = new_price;
    }
}