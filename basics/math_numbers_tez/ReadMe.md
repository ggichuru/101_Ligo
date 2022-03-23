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

## SUBTRACTION

- nat - nat = int (if type is nat, it returns invalid)
- int - int = int
- tez - tez = int

From protocol Ithaca onwards subtracting values of type tez yeilds on optional value (due to the michelson instruction SUB_MUTEZ)
{

let d : option(tez) = 5mutez - 1mutez /*Some (4mutez)*/

let e : option(tez) = 1mutez - 5mutez /*None*/
}
