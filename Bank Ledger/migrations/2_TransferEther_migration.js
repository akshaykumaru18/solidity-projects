const TransferEther = artifacts.require("TransferEther");

module.exports = function(deployer) {
    deployer.deploy(TransferEther);
}