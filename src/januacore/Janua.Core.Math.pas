unit Janua.Core.Math;

interface

uses System.SysUtils;

// Elements ...........................................................................................................

// Matrix

type
  TMatrix<T> = class
  private
    function GetData(index1, index2: Integer): T;
    procedure SetData(index1, index2: Integer; value: T);
  public
    constructor Create(dim1, dim2: Integer);
    property Item[index1, index2: Integer]: T read GetData write SetData; default;
  end;

  // Recursion ..........................................................................................................

  // Ackermann
  { In computability theory, the Ackermann function, named after Wilhelm Ackermann, is one of the simplest[1]
    and earliest-discovered examples of a total computable function that is not primitive recursive.
    All primitive recursive functions are total and computable, but the Ackermann function illustrates that not all total
    computable functions are primitive recursive.

    After Ackermann's publication[2] of his function (which had three nonnegative integer arguments),
    many authors modified it to suit various purposes, so that today "the Ackermann function" may refer to any of
    numerous variants of the original function. One common version, the two-argument Ackermann–Péter function, is
    defined as follows for nonnegative integers m and n: }
function ackermann(m, n: Integer): Integer;

// Matrix Procedures ..................................................................................................
type
  TNativeIntRow = TArray<Nativeint>; // Riga di una Matrice di numeri Interi
  TNativeIntMatrix = TArray<TNativeIntRow>; // Matrice di Interi Array di Array di Interi.
  TExtendedRow = TArray<Extended>; // Riga di una Matrice di numeri Interi
  TExtendedMatrix = TArray<TExtendedRow>; // Matrice di Interi Array di Array di Interi.

function MatrixMultiply(a, b: TNativeIntMatrix): TNativeIntMatrix; overload;
function MatrixMultiply(a, b: TExtendedMatrix): TExtendedMatrix; overload;
function MatrixSum(a, b: TNativeIntMatrix): TNativeIntMatrix; overload;
function MatrixSum(a, b: TExtendedMatrix): TExtendedMatrix; overload;
function MatrixEquals(a, b: TNativeIntMatrix): TNativeIntMatrix; overload;
function MatrixEquals(a, b: TExtendedMatrix): TExtendedMatrix; overload;

// Statistics .........................................................................................................
// Combinations
(*
  In mathematics, a combination is a selection of items from a collection, such that (unlike permutations) the order
  of selection does not matter. For example, given three fruits, say an apple, an orange and a pear, there are three
  combinations of two that can be drawn from this set: an apple and a pear; an apple and an orange; or a pear and an
  orange. More formally, a k-combination of a set S is a subset of k distinct elements of S. If the set has n elements,
  the number of k-combinations is equal to the binomial coefficient:
  (n(n-1)...(n-k+1)) / (k(k-1)...1)
*)
type
  TCombfield = TArray<Nativeint>; // Singola permutazione.
  TCombinations = TArray<TCombfield>; // Array di Permutazioni Entrambi gli array sono variabili

function CombinationsMoutofN(m, n: Nativeint; out o: TCombinations): NativeUInt; overload;
function CombinationsMoutofN(m, n: Nativeint): NativeUInt; overload;

// Permutations
(* In mathematics, the notion of permutation relates to the act of arranging all the members of a set into
  some sequence or order, or if the set is already ordered, rearranging (reordering) its elements,
  a process called permuting. These differ from combinations, which are selections of some members of a set
  where order is disregarded.
  For example, written as tuples, there are six permutations of the set {1,2,3},
  namely: (1,2,3), (1,3,2), (2,1,3), (2,3,1), (3,1,2), and (3,2,1).
  These are all the possible orderings of this three element set. *)
type
  TPermfield = TArray<Nativeint>; // Singola permutazione.
  TPermutations = TArray<TPermfield>; // Array di Permutazioni Entrambi gli array sono variabili

function PermKoutOfN(k, n: Nativeint; out o: TPermutations): NativeUInt; overload;
function PermKoutOfN(k, n: Nativeint): NativeUInt; overload;

implementation

// ********************* Ackermann ************************************************************************************

function ackermann(m, n: Integer): Integer;
begin
  if m = 0 then
    ackermann := n + 1
  else if n = 0 then
    ackermann := ackermann(m - 1, 1)
  else
    ackermann := ackermann(m - 1, ackermann(m, n - 1));
end;

// ********************** Matrix **************************************************************************************

function MatrixMultiply(a, b: TNativeIntMatrix): TNativeIntMatrix; overload;
begin

end;

function MatrixMultiply(a, b: TExtendedMatrix): TExtendedMatrix; overload;
begin

end;

function MatrixSum(a, b: TNativeIntMatrix): TNativeIntMatrix; overload;
begin

end;

function MatrixSum(a, b: TExtendedMatrix): TExtendedMatrix; overload;
begin

end;

function MatrixEquals(a, b: TNativeIntMatrix): TNativeIntMatrix; overload;
begin

end;

function MatrixEquals(a, b: TExtendedMatrix): TExtendedMatrix; overload;
begin

end;

// ********************** Combinations ********************************************************************************

function CombinationsMoutofN(m, n: Nativeint): NativeUInt;
begin
  Result := 0;
end;

function CombinationsMoutofN(m, n: Nativeint; out o: TCombinations): NativeUInt;
begin
  Result := 0;
end;


// ********************** Permutations ********************************************************************************

function PermKoutOfN(k, n: Nativeint): NativeUInt; overload;
var
  o: TPermutations;
begin
  Result := PermKoutOfN(k, n, o);
end;

function PermKoutOfN(k, n: Nativeint; out o: TPermutations): NativeUInt;
var
  x, y, z: TPermfield;
  i, yi, tmp: Nativeint;
begin
  // initialise
  Result := 0; // o inizializza ad 0
  if k > n then
    k := n;
  if k = n then
    k := k - 1;
  // initialize TArrays
  x := TArray<Nativeint>.Create(n + 1);
  y := TArray<Nativeint>.Create(k + 1);
  z := TArray<Nativeint>.Create(k);

  for i := 1 to n do
    x[i] := i;
  for i := 1 to k do
    y[i] := i;

  // DoSomething(k,x);
  i := k;
  repeat
    yi := y[i];
    if yi < n then
    begin
      inc(Result);
      SetLength(o, Result);
      inc(yi);
      y[i] := yi;
      tmp := x[i];
      x[i] := x[yi];
      x[yi] := tmp;
      // i := k - 1;
      for i := 1 to k do
        z[i - 1] := x[i];
      i := k;
      o[Result - 1] := z;
      // DoSomething(k,x);
    end
    else
    begin
      repeat
        tmp := x[i];
        x[i] := x[yi];
        x[yi] := tmp;
        dec(yi);
      until yi <= i;
      y[i] := yi;
      dec(i);
    end;
  until (i = 0);
end;

{ TMatrix<T> }

constructor TMatrix<T>.Create(dim1, dim2: Integer);
begin

end;

function TMatrix<T>.GetData(index1, index2: Integer): T;
begin

end;

procedure TMatrix<T>.SetData(index1, index2: Integer; value: T);
begin

end;

end.
