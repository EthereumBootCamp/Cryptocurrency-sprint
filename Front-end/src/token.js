import web3 from './web3';
const { interface, bytecode } = require('../EthToken/compile');

deployedContract = await new web3.eth.Contract(JSON.parse(interface))
    .deploy({
      data: bytecode,
      arguments: [100000000000000000000, 'BCCoin', 0, 'BCC' , 100]
    })
    .send({ from: accounts[0], gas: '1000000' });

const address = deployedContract.options.address;

const abi = interface;
export default new web3.eth.Contract(abi, address);