# C9Chain_XDCSubnet
Subnet C9Chain with XDC Network

Olá amigos,

Estamos felizes por estar com nossa rede operando como Sub-rede da XDC.

Agradecimentos a equipe [XDC](https://xinfin.org/) por organizarem e submeterem a comunidade este importante trabalho, que torna o caminho mais curto para para adoção da Web3 por pessoas comuns e corporações.

Documentamos neste repositório o caminho para colocar a tecnologia de TRC21 ativa na rede XDC.

Com o contrato de issuer emitido no genesis, pode-se operar contratos pre-tracionados, onde cada transação é paga a um fundo comum, pelo portador do token ou por qualquer um que acredite no projeto.


1 - Faça o procedimento normal para subir sua sub-rede seguindo os passos:

[Vídeo explicativo](https://www.youtube.com/watch?v=m-sPbMrB8ow)
   
[Passo a passo](https://xinfinorg.github.io/xdc-subnet-docs/deployment/launch_subnet/)
   
Siga os passos, até que seja gerado o genesis.json em "generated"
   
Entre no diretorio e vamos alterar o genesis.json para incluir nele o contrato, o endereço pode ser alterado.
   
   **JSON:**
```
    "000000000000000000434F4E5452414354464545": {
      "code": "0x608060405260043610610078576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806317a7ef051461007d5780633fa615b0146100be5780638f3a981c146100e95780639d63848a14610140578063c6b32f34146101ac578063fc6bd76a146101e2575b600080fd5b34801561008957600080fd5b506100a860048036038101908080359060200190929190505050610218565b6040518082815260200191505060405180910390f35b3480156100ca57600080fd5b506100d36102ec565b6040518082815260200191505060405180910390f35b3480156100f557600080fd5b5061012a600480360381019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506102f5565b6040518082815260200191505060405180910390f35b34801561014c57600080fd5b5061015561033e565b6040518080602001828103825283818151815260200191508051906020019060200280838360005b8381101561019857808201518184015260208101905061017d565b505050509050019250505060405180910390f35b6101e0600480360381019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506103cc565b005b610216600480360381019080803573ffffffffffffffffffffffffffffffffffffffff16906020019092919050505061065c565b005b60003373ffffffffffffffffffffffffffffffffffffffff16600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff161415156102df576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260178152602001807f4f6e6c79206973737565722063616e20646f207468697300000000000000000081525060200191505060405180910390fd5b8160008190559050919050565b60008054905090565b6000600260008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020549050919050565b606060018054806020026020016040519081016040528092919081815260200182805480156103c257602002820191906000526020600020905b8160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019060010190808311610378575b5050505050905090565b600081600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415151561040b57600080fd5b600054341015151561041c57600080fd5b8291503373ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff16631d1438486040518163ffffffff167c0100000000000000000000000000000000000000000000000000000000028152600401602060405180830381600087803b15801561049a57600080fd5b505af11580156104ae573d6000803e3d6000fd5b505050506040513d60208110156104c457600080fd5b810190808051906020019092919050505073ffffffffffffffffffffffffffffffffffffffff161415156104f757600080fd5b60018390806001815401808255809150509060018203906000526020600020016000909192909190916101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550506105af34600260008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020546107a890919063ffffffff16565b600260008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508273ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f2d485624158277d5113a56388c3abf5c20e3511dd112123ba376d16b21e4d716346040518082815260200191505060405180910390a3505050565b80600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415151561069957600080fd5b60005434101515156106aa57600080fd5b6106fc34600260008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020546107a890919063ffffffff16565b600260008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f5cffac866325fd9b2a8ea8df2f110a0058313b279402d15ae28dd324a2282e06346040518082815260200191505060405180910390a35050565b60008082840190508381101515156107bf57600080fd5b80915050929150505600a165627a7a72305820b997a057e940eb1bb244f7496cf6b6a7b21d7461abe8b4fb1dfe348b606fe32d0029",
      "storage": {
        "0x0000000000000000000000000000000000000000000000000000000000000000": "0x0000000000000000000000000000000000000000000000008ac7230489e80000",
        "0x0000000000000000000000000000000000000000000000000000000000000003": "0x0000000000000000000000001b64038a2b1db73abd0068d8b9b0d1dc5a90c5f1"
      },
      "balance": "0x0"
    },
      
      
         

![Screenshots](https://www.crmcoins.com.br/images/xdc.png)