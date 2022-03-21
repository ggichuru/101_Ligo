type storage = int;

type parameter = Increment(int) | Decrement(int) | Reset;

type return = (list(operation), storage);

let add = ((store, delta): (storage, int)): storage => 
  store + delta;

let sub = ((store, delta): (storage, int)): storage => 
  store - delta;

let main = ((action, store): (parameter, storage)): return => {
  (([] : list(operation)),
    (switch (action) {
     | Increment(n) => add((store, n))
     | Decrement(n) => sub((store, n))
     | Reset => 0
     }))
};
