let closure_example = (i: int): int => {
  let closure = (j: int): int => i + j;
  closure(i)
};
