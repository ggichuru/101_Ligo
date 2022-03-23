# STRINGS

- They are defined using the built-in `string` type

  ```
  let name: string = "Adrian"
  ```

## Concatenating Strings

- `++` is used to concatenate strings

  ```
  greeting ++ "" ++ name
  ```

## Extracting Substrings

- Done using `String.sub`.

  ```
  let name: string = "Ann"
  let slice: string = String.sub (0n, 1n, name);
  ```

## Length of Strings
`String.length()`



# BYTES
- They are defined using the prefix `0x` followed by hexadecimal digits like this.
  ```
  let b: bytes = 0x7070
  ```  