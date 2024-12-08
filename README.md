### This is dapp built on BNB Chain,
The core idea of this dapp is scurely attest the data on chain and compute Repuatation scores in some cases.
Supply Chain was one thing which was always seen far apart from Blockchain, but with this scalable solution, we can enter that domain as well
The vendors at every stage can add their attestation using True Network and any other on BNB chain can verify that, and in some cases repuatation score is also calculated

### Verification these Transactions on Explorer
0xf2e04d9a59a00337202a890ee7b3c817aac77acee458123819845abf430a0bdd
0x384d4a7d3f16b9673079350a0c7cb73182614ef1345a5ed266e81cffee93b8a5
0x86b82599dadc10bcd28f51209e273279a9762af27664486e333c67af0918be5d

deployed on testnet from the account:
0x4A2A6898eE3C9156ceA78B4e538901C95c5E0e77



### Tutorial on how to implement:
1. Just clone these two repos: (I) https://github.com/RajasreePonnada/genome (II) https://github.com/RajasreePonnada/frontend

2. install all the dependencies: available on hardhat-config(contracts) and package.json(frontend)

3. cd into frontend and run "npm run dev"

4. Connecty the wallet, if BNB testnet is not connected before, it make a new connection :)

5. CLick on Register User to register user on BNB Chain (he'd be perceived as issuer from now on to attest data)

6. you can try out the Schemas given there like skillSchema, trustSchema, empowerSchema, repoSchema (try them out and you can find your attestations on : https://polkadot.js.org/apps/?rpc=wss%3A%2F%2Framan.truenetwork.io%2Fws#/explorer )

7. I have also created components in the pages library of frontend, where API which can be scraped can be added and can attest data from their.

8. Enough of Attestations, you can calculate the repuatation score of the use using wallet address with pre defined algorithms which can be changed in acm directory (acm/algorithms/index.ts)

9. you can go change the algo their and find the reputation score accordingly

### ROADMAP FOR NEAR FUTURE DEVLOPMENT:
1. Interoperability Across Use Cases:
From apprenticeships to supply chains, STEM Chain abstracts the core attestation framework to adapt seamlessly.
2. Scaling Trust:
Supply chain management, academic integrity, and social empowerment converge in a unified framework.
3. Future Integrations:
Enhanced AI-driven reputation mechanisms.


### BUSINESS MODEL

As said supply chain management is where these attestations can potentially make more money,
So the platform registration fees cum fee per batch of txns can be revenue for the chain and since this increases scalability, issuers would no hesitate pay instead of putting hard-earned money as gas fees in one by one attestations.

The project can be abstracted into any use-case where attestations are necessary, bonus is the reputation algo (name would change according to the use-case).

Here we consider the data to behave like biological info,
Simulates interconnected, inheritable reputation

Adapts to evolving datasets

Older or inactive data loses relevance.
Weighs diverse data types based on unpredictability and usefulness.

Higher entropy data contributes more to dynamic reputation scores.


GItHub becomes relevant here, repuattaion depends on prev repos, gap periods between commits,

much more than green chart,

can be useful to protocol grants, hack. acceptances
