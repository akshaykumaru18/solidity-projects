const TransferEther = artifacts.require("TransferEther");

module.exports = async function(callback){
    try{
        const instance = await TransferEther.deployed();
        const reciever = "0x59DfE417922BE2c3f0446c0F0a157a332Dc00FD0";
        await instance.transfer(reciever,{
            value: web3.utils.toWei({"1":"ether"})
        });
    }  catch(e){
            console.error(`Error transfering amount ${e}`);
    }       
}
