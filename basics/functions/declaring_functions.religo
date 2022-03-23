let add = ((a, b): (int, int)): int => a + b;

let myFun = ((x, y): (int, int)): int => {
  let doublex = x * 2;
  let doubley = y * 2;
  doublex + doubley
};

let k = ((x, _): (int, int)) => x;

let k = ((x, _y): (int, int)) => x;
