# MATH, NUMBERS & TEZ

- Built-in types are `int, nat and tez`
  - *int* : integers
  - *nat* : natural numbers (Integral numbers >= 0)
  - *tez* : units of measure of Tezos token

## ADDITION

same as always, with tpye constraints applying (you cannot add tex to int)

- int + int = int
- nat + int = int (`let b: int = 5n + 10`)
- tez + tez = tez
- tez + int | tez + nat = invalid
- nat + nat = nat
- nat + int = invalid (`let f : nat = 5n + 10`)
