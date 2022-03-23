type parameter = Back | Claim | Withdraw;

type storage = {
  owner: address,
  goal: tez,
  deadline: timestamp,
  backers: map(address, tez),
  funded: bool
};

type return = (list(operation), storage);

let back = ((param, store): (uint, storage)): return => {
  let no_op: list(operation) = [];
  if(Tezos.now > store.deadline) {
    (failwith("Deadline passed") : return)
  } else {

    switch (Map.find_opt(sender, store.backers)) {
    | None =>
        {
          let backers = 
            Map.update(sender, Some (amount), store.backers);
          (no_op, {...store, backers: backers})
        }
    | Some(x) => (no_op, store)
    }
    }
};
