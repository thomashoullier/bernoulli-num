# Bernoulli numbers computation
`bernoulli-num` implements the computation of Bernoulli numbers [1].

## Convention
We use the *+Bn* Bernoulli numbers [1]. The first few are: 1, +1/2, 1/6, 0, etc.

## Usage
### bnum
Computes a single Bernoulli number using the Akiyama-Tanigawa recursion [2].
⚠️ This is highly inefficient and can only be used for the first few Bernoulli
  numbers. ⚠️ Academic interest only.

```common-lisp
(bernoulli-num:bnum n) ; => +Bn
```

## Dependencies
* `bernoulli-num`: None
* `bernoulli-num/test`:
  * [rove](https://github.com/fukamachi/rove)

## Test
Launch tests with:

```common-lisp
(asdf:test-system "bernoulli-num")
```

## References
1. https://en.wikipedia.org/wiki/Bernoulli_number
2. M. Kaneko, “The Akiyama-Tanigawa algorithm for Bernoulli numbers,” Journal
   of Integer Sequences 3(2), 1–7 (2000).
  

