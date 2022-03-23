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

## MULTIPLICATION

You can multiply values of the same type
You can also multiply nat and tez

## DIVISION

- You can divide int, nata nd tez
- Division of two tez values results into a nat
- LIGO also allows you to compute the remainder of the Euclidean division. In LIGO, it is a natural number
- For cases when you need both the quotient and the remainder, LIGO provides the `ediv` operation. `ediv x y` returns `Some (quotient, remainder)`, unless y is zero, in which case it returns `None`


## CHECK IF `NAT`

- Check if `nat` by using a predefined cast functin that accepts an `int` and returns an optional `nat`.
- If the result is `None`, the provided integer was a natural number.