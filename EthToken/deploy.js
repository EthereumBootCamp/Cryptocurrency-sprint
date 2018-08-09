// your code here

const Web3 = require('web3');
const { interface, bytecode } = require('./compile');

const provider  // your code here 
const web3  // your code here

const deploy = async () => {
  const accounts = await web3.eth.getAccounts();

  console.log('Attempting to deploy from account', accounts[0]); // address of the deployer

  const result = // your code here
  console.log('Contract deployed to', result.options.address); //address of the deployed contract
};
deploy();
