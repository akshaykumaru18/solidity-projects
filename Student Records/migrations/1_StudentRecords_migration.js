const studentRecords = artifacts.require("StudentRecords");

module.exports = function (deployer){
        deployer.deploy(studentRecords);
}