
type breed = string;

let dog_breed: breed = "Cornelius";

type account_balances = map(address, tez);

let ledger: account_balances = 

  Map.literal([("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx"
        : address, 10mutez)]);
