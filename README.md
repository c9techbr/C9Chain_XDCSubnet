# C9Chain_XDCSubnet
C9Chain Subnet with XDC Network

Hello friends,

We are happy to have our network operating as an XDC Subnet.

Thanks to the [XDC](https://xinfin.org/) team for organizing and submitting this important work to the community, which makes the path to Web3 adoption by ordinary people and corporations shorter.

We document in this repository the path to put TRC21 technology active on the XDC network.

With the issuer contract issued at genesis, you can operate pre-drawn contracts, where each transaction is paid to a common fund, by the token holder or by anyone who believes in the project.

1 - Follow the normal procedure to launch your subnet by following these steps:

[Explanatory video](https://www.youtube.com/watch?v=m-sPbMrB8ow)
   
[Step by step](https://xinfinorg.github.io/xdc-subnet-docs/deployment/launch_subnet/)
   
Follow the steps until genesis.json is generated in "generated"

Enter the directory and let's change genesis.json to include the contract in it, the address can be changed, but it needs to recompila XDC, as below.

**JSON:**
```
    "8C0FAEB5C6BED2129B8674F262FD45C4E9468BEE": {
      "code": "0x608060405260043610610078576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806317a7ef051461007d5780633fa615b0146100be5780638f3a981c146100e95780639d63848a14610140578063c6b32f34146101ac578063fc6bd76a146101e2575b600080fd5b34801561008957600080fd5b506100a860048036038101908080359060200190929190505050610218565b6040518082815260200191505060405180910390f35b3480156100ca57600080fd5b506100d36102ec565b6040518082815260200191505060405180910390f35b3480156100f557600080fd5b5061012a600480360381019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506102f5565b6040518082815260200191505060405180910390f35b34801561014c57600080fd5b5061015561033e565b6040518080602001828103825283818151815260200191508051906020019060200280838360005b8381101561019857808201518184015260208101905061017d565b505050509050019250505060405180910390f35b6101e0600480360381019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506103cc565b005b610216600480360381019080803573ffffffffffffffffffffffffffffffffffffffff16906020019092919050505061065c565b005b60003373ffffffffffffffffffffffffffffffffffffffff16600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff161415156102df576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260178152602001807f4f6e6c79206973737565722063616e20646f207468697300000000000000000081525060200191505060405180910390fd5b8160008190559050919050565b60008054905090565b6000600260008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020549050919050565b606060018054806020026020016040519081016040528092919081815260200182805480156103c257602002820191906000526020600020905b8160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019060010190808311610378575b5050505050905090565b600081600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415151561040b57600080fd5b600054341015151561041c57600080fd5b8291503373ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff16631d1438486040518163ffffffff167c0100000000000000000000000000000000000000000000000000000000028152600401602060405180830381600087803b15801561049a57600080fd5b505af11580156104ae573d6000803e3d6000fd5b505050506040513d60208110156104c457600080fd5b810190808051906020019092919050505073ffffffffffffffffffffffffffffffffffffffff161415156104f757600080fd5b60018390806001815401808255809150509060018203906000526020600020016000909192909190916101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550506105af34600260008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020546107a890919063ffffffff16565b600260008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508273ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f2d485624158277d5113a56388c3abf5c20e3511dd112123ba376d16b21e4d716346040518082815260200191505060405180910390a3505050565b80600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415151561069957600080fd5b60005434101515156106aa57600080fd5b6106fc34600260008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020546107a890919063ffffffff16565b600260008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f5cffac866325fd9b2a8ea8df2f110a0058313b279402d15ae28dd324a2282e06346040518082815260200191505060405180910390a35050565b60008082840190508381101515156107bf57600080fd5b80915050929150505600a165627a7a72305820b997a057e940eb1bb244f7496cf6b6a7b21d7461abe8b4fb1dfe348b606fe32d0029",
      "storage": {
        "0x0000000000000000000000000000000000000000000000000000000000000000": "0x0000000000000000000000000000000000000000000000008ac7230489e80000",
        "0x0000000000000000000000000000000000000000000000000000000000000003": "0x0000000000000000000000001b64038a2b1db73abd0068d8b9b0d1dc5a90c5f1"
      },
      "balance": "0x0"
    },
      
```

It is also interesting to adjust, to your interest, the amount that your mother currency will have. In this case, the value of "balance" should be the value considering 18 decimal places, a great website to make the conversion is[Rapidtable](https://www.rapidtables.com/convert/number/decimal-to-hex.html). In the example below, the Hexadecimal 0xa56fa5b99019a5c8000000 represents 200 000 000 000000000000000000

   
**JSON:**
```
    "5b350dea014ca43b0ef948cb24f6533a2416f80c": {
      "balance": "0xa56fa5b99019a5c8000000"
    }
      
```

-- This step below is only necessary if your subnet has already been deployed and is running. You can deploy issuer.sol, which will have a different address, requiring you to recompile the XDC executable with the new address created.

Compile XDC from the sources. It may seem difficult to have to compile, but it is not.

The official github is this [https://github.com/XinFinOrg/XDC-Subnet](https://github.com/XinFinOrg/XDC-Subnet)

```
git clone https://github.com/XinFinOrg/XDC-Subnet
```

With the subnet sources already in your workspace, modify the common/constats.go file

Look for the line:

```
var TRC21IssuerSMC = HexToAddress("0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee")
```

Replace with the contract address in the JSON, if your network is already running, replace with the address generated by Remix or your preferred program to perform the deployment.


```
var TRC21IssuerSMC = HexToAddress("0x000000000000000000434F4E5452414354464545")
```

Save the file, and compile:

```
make
```

At the end of the compilation, XDC will be generated in the cmd/bin subdirectory.

Stop your network and change the XDC executable in Docker to the one generated in this compilation.

Done!!

Your subnet now has the best technology ever created for using smart contracts with prepaid Gas fees.

Now we will learn how to "charge" the "issuer" so that your contract runs in a prepaid model. Remember that, if the funds run out, the Gas amount will be charged again from the user's wallet.

The best way to do and understand the process is to use [gochain/web3](https://github.com/gochain/web3), which is a command line project that allows you to transfer funds or even interact with EVM smart contracts of any Ethereum standard blockchain via the command line in a very simple way.

```
git clone https://github.com/gochain/web3
cd web3
go build
cp ./cmd/bin/web3 /usr/local/bin
```

**Update your Linux go to version 1.20 or higher if you experience any errors in the compilation process**

Now let's use web3 to interact with the issuer contract in order to make a deposit in it, which can cover the Gas of your contract:

Be careful when using web3, because in it the private key is explicit on the command line. Use it in secure environments and never publish anything with your private key.

For integration commands, remember to always keep issuer.abi on your machine, it is in this repository and is necessary for web3 to interpret the functions.

The private keys below are examples.

Functions of the "read-only" style do not need to specify the "--pk" parameter, which is your private key, again: BE CAREFUL WITH THE EXPOSURE OF YOUR PRIVATE KEY.

1 - Returns a list of tokens with Gas already paid within the contract:
```
web3  --format json --verbose --rpc-url=http://127.0.0.1:8545 contract call --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --abi ./issuer.abi --function tokens
```

2 - Check the minimum deposit amount (Can be changed at any time with the setminCap function of the smart contract, can only be executed by the contract publisher.
```
web3 --format json --verbose --rpc-url=http://127.0.0.1:8545 contract call --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --abi ./issuer.abi --function minCap
```

3 - Get the Gas value for a token
```
web3 --format json --verbose --rpc-url=http://127.0.0.1:8545 contract call --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --abi ./issuer.abi --function getTokenCapacity 0x<Token Address>
```

4 - Make a Gas charge of the minimum amount to traction a contract in your subnet, in this case, we use the fictitious private key 1000...0001, and you need to send the minimum amount (minCap) to the address of your published issuer. Remember that the wallet specified in --pk must have the currency of your network for deposit.
```
web3 --format json --verbose --rpc-url=http://127.0.0.1:8545 :8545 contract call --amount 10000000000000000000 --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --pk=1000000000000000000000000000000000000000000000000000000000000001 --abi ./issuer.abi --function apply 0x<Token Address>

```

Done, your token is supplied, now you can test it using wallets that do not have your network's token, only the published token with the fee already prepaid, making it extremely easy to use.
In the example below, the private key should have received only a quantity of the token "0x<Token Address>", without the network's default currency, and the transfer should occur without problems. Then you can check the balance with (getTokenCapacity) and you will see that the GAS was deducted from this fund and not from the user's wallet.

```
web3 --verbose --rpc-url=http://127.0.0.1:8545 transfer 100 to 0x3321928b63de22fb21b81bba788f93455d948838 --address=0x<Token Address> --erc20 --pk=2000000000000000000000000000000000000000000000000000000000000002
```

If you have any questions, please feel free to contact us via the XDC forum or by email: wagner@c9tech.com.br.

[C9 Tech on youtube](https://www.youtube.com/@c9tech_oficial)

[C9 Tech](www.c9tech.com.br)

[C9 Tech Crypto card](https://www.youtube.com/shorts/8iKBrYTJhys)
[C9 Tech Crypto card](https://www.youtube.com/shorts/n8Q_0ocLokM)

Below is a commemorative image of the XDC/EVM card, the cheapest HSM on the market.

![Screenshots](https://www.crmcoins.com.br/images/xdc.png)