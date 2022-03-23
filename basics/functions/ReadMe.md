# FUNCTIONS

- These are the basic building blocks of a contract
- Entry points are functions and each smart contract need a main function that dispatches control to the entrypoints.

## DECLARING FUNCTIONS

- Defined using `let` keyword.
- The difference from other values is that a tuple of parameters is provided after the value name, with its type and then followed by a return type.

  ```
  let add = ((a, b): (int, int) : int => a + b)
  ```

## ANONYMOUS FUNCTIONS

- Its possible to define functions without assigning them a name. They are useful when you want to pass them as arguments or assign them to a key in a record or a map

    ```
    let incr = (b: int) : int => ((a: int) : int => a + 1) (b);
    let a : int = increment (1)
    ```

- **Desgin patterns**
  - Using lambdas to be used as parameters to functions.
  - USE CASE => *having a list of integers and mapping the increment function to all its elements*

    ```
        let incr_map = (l : list (int)) : list (int) => 
            List.map ((i: int) => i + 1, l);       
     ```

## NESTED FUNCTIONS

- Its possible to place functions inside other functions

## RECURSIVE FUNCTIONS

- Functions in ligo are not recursive by default, they are user specied
- Recursive functions are limited to one

  ```
  let rec fibo = ((n, n_1, n_0) : (int, int, int)): int =>
    if (n < 2) { n_1; } else { fibo ((n-1, n_1 + n_0, n_1)); };
  ```
