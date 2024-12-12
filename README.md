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
    "8C0FAEB5C6BED2129B8674F262FD45C4E9468BEE": {
      "code": "0x608060405260043610610078576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff16806317a7ef051461007d5780633fa615b0146100be5780638f3a981c146100e95780639d63848a14610140578063c6b32f34146101ac578063fc6bd76a146101e2575b600080fd5b34801561008957600080fd5b506100a860048036038101908080359060200190929190505050610218565b6040518082815260200191505060405180910390f35b3480156100ca57600080fd5b506100d36102ec565b6040518082815260200191505060405180910390f35b3480156100f557600080fd5b5061012a600480360381019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506102f5565b6040518082815260200191505060405180910390f35b34801561014c57600080fd5b5061015561033e565b6040518080602001828103825283818151815260200191508051906020019060200280838360005b8381101561019857808201518184015260208101905061017d565b505050509050019250505060405180910390f35b6101e0600480360381019080803573ffffffffffffffffffffffffffffffffffffffff1690602001909291905050506103cc565b005b610216600480360381019080803573ffffffffffffffffffffffffffffffffffffffff16906020019092919050505061065c565b005b60003373ffffffffffffffffffffffffffffffffffffffff16600360009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff161415156102df576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004018080602001828103825260178152602001807f4f6e6c79206973737565722063616e20646f207468697300000000000000000081525060200191505060405180910390fd5b8160008190559050919050565b60008054905090565b6000600260008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020549050919050565b606060018054806020026020016040519081016040528092919081815260200182805480156103c257602002820191906000526020600020905b8160009054906101000a900473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019060010190808311610378575b5050505050905090565b600081600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415151561040b57600080fd5b600054341015151561041c57600080fd5b8291503373ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff16631d1438486040518163ffffffff167c0100000000000000000000000000000000000000000000000000000000028152600401602060405180830381600087803b15801561049a57600080fd5b505af11580156104ae573d6000803e3d6000fd5b505050506040513d60208110156104c457600080fd5b810190808051906020019092919050505073ffffffffffffffffffffffffffffffffffffffff161415156104f757600080fd5b60018390806001815401808255809150509060018203906000526020600020016000909192909190916101000a81548173ffffffffffffffffffffffffffffffffffffffff021916908373ffffffffffffffffffffffffffffffffffffffff160217905550506105af34600260008673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020546107a890919063ffffffff16565b600260008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508273ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f2d485624158277d5113a56388c3abf5c20e3511dd112123ba376d16b21e4d716346040518082815260200191505060405180910390a3505050565b80600073ffffffffffffffffffffffffffffffffffffffff168173ffffffffffffffffffffffffffffffffffffffff161415151561069957600080fd5b60005434101515156106aa57600080fd5b6106fc34600260008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020546107a890919063ffffffff16565b600260008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff163373ffffffffffffffffffffffffffffffffffffffff167f5cffac866325fd9b2a8ea8df2f110a0058313b279402d15ae28dd324a2282e06346040518082815260200191505060405180910390a35050565b60008082840190508381101515156107bf57600080fd5b80915050929150505600a165627a7a72305820b997a057e940eb1bb244f7496cf6b6a7b21d7461abe8b4fb1dfe348b606fe32d0029",
      "storage": {
        "0x0000000000000000000000000000000000000000000000000000000000000000": "0x0000000000000000000000000000000000000000000000008ac7230489e80000",
        "0x0000000000000000000000000000000000000000000000000000000000000003": "0x0000000000000000000000001b64038a2b1db73abd0068d8b9b0d1dc5a90c5f1"
      },
      "balance": "0x0"
    },
      
```

É interessante também ajustar, a seu interesse a quantidade que sua moeda mãe terá. No caso, o valor de "balance" deve ser o valor considerando 18 casas decimais, um ótimo site para fazer a conversão é o [Rapidtable](https://www.rapidtables.com/convert/number/decimal-to-hex.html). No exemplo abaixo, o Hexadecimal 0xa56fa5b99019a5c8000000 representa 200 000 000 000000000000000000

   
   **JSON:**
```
    "5b350dea014ca43b0ef948cb24f6533a2416f80c": {
      "balance": "0xa56fa5b99019a5c8000000"
    }
      
```

-- Este passo abaixo apenas é necessário se sua subrede já teve deploy realizado e está rodando, você poderá implantar o issuer.sol, que terá um endereço diferente, necessitando assim, que você faça a recompilação do executával da XDC com o endereço novo criado.

Faça a recompilação do XDC a partir dos fontes, pode parecer difícil ter que compilar, mas não é.

O github oficial é este [https://github.com/XinFinOrg/XDC-Subnet](https://github.com/XinFinOrg/XDC-Subnet)

```
git clone https://github.com/XinFinOrg/XDC-Subnet
```

Com os fontes da subnet já em seu local de trabalho, altere o arquivo common/constats.go

Procure a linha:

```
var TRC21IssuerSMC = HexToAddress("0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee")
```

Substitua pelo endereço do contrato no JSON, se sua rede já exister rodando, substitua pelo endereço gerado pelo Remix ou programa de sua preferência para realização do deploy.


```
var TRC21IssuerSMC = HexToAddress("0x000000000000000000434F4E5452414354464545")
```

Salve o arquivo, e compile:

```
make
```

Ao final da compilação, será gerado no subdiretorio cmd/bin o XDC.

Pare sua rede e troque o executável XDC no docker para o gerado nessa compilação.

Pronto!!

Sua subrede agora conta com a melhor tecnologia já criada para uso de contratos inteligentes com taxa de Gas pre-paga.

Agora vamos aprender como efetuar uma "carga" no "issuer" para que seu contrato rode num modelo pré-pago. Lembrando que, se os fundos acabarem, o valor de Gas será cobrado novamente da carteira do usuário.

A melhor forma de fazer e compreender o processo, é usando o [gochain/web3](https://github.com/gochain/web3), que é um projeto de linha de comando, que permite de forma bem simples que se transfira fundos ou mesmo que você possa interagir com contratos inteligentes EVM de qualquer blockchain do padrão Ethereum via linha de comando.

```
git clone https://github.com/gochain/web3
cd web3
go build
cp ./cmd/bin/web3 /usr/local/bin
```

**Atualize o go de seu linux para versão 1.20 ou superior se tiver algum erro no processo de compilação**

Agora vamos usar o web3, para interagir com o contrato issuer a fim de fazer um deposito no mesmo, que possa cobrir o Gas do seu contrato:

Cuidado ao usar o web3, pois nele a chave privada é explicita na linha de comando. Use em ambientes seguros e não pubique nunca, nada com sua chave privada.

Comandos para integração, lembre de manter o issuer.abi sempre na maquina, ele está neste repositório e é necessário para que o web3 interprete as funções.
As chaves privadas abaixo são de exemplos.

Funções do estilo, "somente leitura" não precisam da especificação do parâmetro "--pk", que é sua chave privada, novamente: CUIDADO COM A ESPOSIÇÃO DA SUA CHAVE PRIVADA.

1 - Retorna lista de tokens já com Gas pago dentro do contrato:
```
web3  --format json --verbose --rpc-url=http://127.0.0.1:8545 contract call --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --abi ./issuer.abi --function tokens
```

2 - Verificar o valor minimo de depósito (Pode ser alterado a qualquer momento com a função setminCap do contrato inteligente, só pode ser executada pelo publicador do contrato.
```
web3 --format json --verbose --rpc-url=http://127.0.0.1:8545 contract call --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --abi ./issuer.abi --function minCap
```

3 - Obter o valor de Gas para um token
```
web3 --format json --verbose --rpc-url=http://127.0.0.1:8545 contract call --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --abi ./issuer.abi --function getTokenCapacity 0x<Token Address>
```

4 - Efetuar uma carga de Gas no valor minimo para tracionar um contrato na sua subrede, neste caso, usamos a chave privada ficticia 1000...0001, e você precisa enviar o valor minimo (minCap) para o endereço do seu issuer publicado. Lembre que, a carteira especificada em --pk deve ter a moeda da sua rede para depósito.
```
web3 --format json --verbose --rpc-url=http://127.0.0.1:8545 :8545 contract call --amount 10000000000000000000 --address=0x8c0faeb5C6bEd2129b8674F262Fd45c4e9468bee --pk=1000000000000000000000000000000000000000000000000000000000000001 --abi ./issuer.abi --function apply 0x<Token Address>

```

Pronto, seu token está abastecido, agora pode testar usando carteiras que não tenham o token da sua rede, apenas o token publicado com a taxa já pré-paga, dando uma facilidade de uso enorme do mesmo.
No exemplo abaixo a chave privada, deve ter recebido apenas uma quantidade do token "0x<Token Address>", sem a moeda padrão da rede, e a transferência deve ocorrer sem problemas, depois pode verificar o saldo com (getTokenCapacity) e verá que o GAS foi desconta deste fundo e não da carteira do usuário.

```
web3 --verbose --rpc-url=http://127.0.0.1:8545 transfer 100 to 0x3321928b63de22fb21b81bba788f93455d948838 --address=0x<Token Address> --erc20 --pk=2000000000000000000000000000000000000000000000000000000000000002
```

Qualquer dúvida fique a vontade entrando em contato via fórum da XDC ou pelo e-mail.

Abaixo uma imagem comemorativa do cartão XDC/EVM, o HSM mais barato do mercado.

![Screenshots](https://www.crmcoins.com.br/images/xdc.png)