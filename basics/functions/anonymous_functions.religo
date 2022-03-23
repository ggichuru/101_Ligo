let increment = (b: int): int => ((a: int): int => a + 1)(b);

let a: int = increment(11);

let incr_map = (l: list(int)): list(int) => 
  List.map((i: int) => i + 1, l);
