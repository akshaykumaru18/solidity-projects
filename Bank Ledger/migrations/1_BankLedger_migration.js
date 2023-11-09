const bankLedger = artifacts.require("BankLedger");
module.exports = function(deployer) {
    deployer.deploy(bankLedger);
}