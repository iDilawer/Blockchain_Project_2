const SimpleSmartContract = artifacts.require("SimpleSmartContract");

contract('SimpleSmartContract', accounts => {
    let instance;
    beforeEach('should setup the contracat instance', async () => {
        instance = await SimpleSmartContract.deployed();
    });

    it("should return the list of accounts", async() => {
        console.log(accounts);
    });

    it("should return the name", async () => {
        const instance = await SimpleSmartContract.deployed();
        const value = await instance.getName();
        assert.equal(value, 'my name');
    });

    it("should test the set name", async () => {
        const instance = await SimpleSmartContract.deployed();
        await instance.setName('new name');
        const value = await instance.getName();
        assert.equal(value, 'new name');
    });
});