type account = address;

type number_of_tx = nat;

type account_data = {
  balance: tez,
  transactions: number_of_tx
};

type ledger = map(account, account_data);

let my_ledger: ledger = {

  Map.literal([("tz1KqTpEZ7Yob7QbPE4Hy4Wo8fHG8LhKxZSx"
        : account, {balance: 10mutez, transactions: 5n })])
};
