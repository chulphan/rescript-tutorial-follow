let greeting: string = "Hello, World!"

/*
  This is known as a let-binding. It has the following form:

      let <binding-name>: <type> = <expression>

  The ReScript compiler will "type check" if the value on the right-hand side 
  matches the expected type. The code will fail to compile if there is a 
  mismatch.

  Other commonly used primitive types are:
    - `int` (32-bit integers), 
    - `float`,
    - `bool` (either `true` or `false`).

  -----------------------------------------------------------------------------
  Exercise 1 (easy)
  -----------------------------------------------------------------------------
  Change the type of `greeting` to one of the other primitive types. 
  
  This will result in a compilation error because of type mismatch. Inspect 
  the compiler error message.
  
  Once you have understood the error message fix it by changing the annotated 
  type of `greeting` back to `string`.
  -----------------------------------------------------------------------------

  Did you try changing the annotated type to either `int` or `float` in the
  exercise above?

  The compiler error message includes a contextual recommendation. It points
  you to a library function which can be used to convert a `string` to either
  `int` or `float` types.

  Did you misspell `string` as `sting` or `stirgn`?

  The compiler contain a rudimentary spell-checker which then provides you
  with a hint.

  The point is compiler errors don't have to be scary, cryptic or difficult
  to understand. There is a new generation of compilers which provides clear
  and helpful error messages by design. The quality of these error messages
  signficantly improves the developer experience when working in languages
  with such compilers.

  --- immutability start ---
  In many mainstream programming languages you can modify the value
  in the `greeting` variable. It would look like this:
  
  ```
  greeting = "Goodbye!"
  ```
  
  The `greeting` variable is __mutable__. So you can change the
  contents referenced by this variable any number of times in
  the code that you author.

  This is not valid syntax in ReScript. The `greeting` variable
  is __immutable__. It's value cannot be changed.

  If you are used to the mutable style of programming, it will take
  some adjusting to where the default is immutable values. This is
  standard fare for functional programming languages, and has its
  benefits.

  When variables are mutable you have to write more guard clauses
  in your code to assert and raise exceptions when invalid states
  are entered during computation. This is known as enforcing
  invariants in your code. In the presence of mutability reasoning
  about state is lot more difficult, and it creates more opportunities
  for bugs in the code.

  With immutability as the default it becomes easier to reason
  about the state because its constrained in how it can be changed.
  As a consequence it requires less code to enforce your invariants.
  The reason being that the compiler does this for you.

  --- immutability end ---

  At first glance it may not be obvious how you can write any useful
  programs in this language without mutation...
*/

// let greeting: string = "Goodbye!"
/*
  This binding `greeting` __shadows__ the earlier binding with the
  same name.  
  
  If you look at the JavaScript generated by the ReScript compiler
  in `tutor.bs.js` the value of the variable greeting is the same
  as the shadowed value above. The previous value of the binding
  is nowhere to be seen in the generated JavaScript. The compiler
  was smart enough to optimize it away.

  ```
  // Generated code in `tutor.bs.js`
  var greeting = "Goodbye!";
  ```

  Ex.2
  Fix the compiler warning regarding unused value `greeting`. This
  is a useful warning from the compiler informing us about bindings
  which are not being used anywhere.

  Modify the above binding to produce have tthe string

  In line no.11 change `greeting` to `_greeting`
  To fix this warning you can prefix an underscore to the name of 
  the binding on line no. 11. Change `greeting` to `_greeting`.


 */

/*

let firewood: string = `শিমুল কাঠই হোক বা বকুল কাঠই হোক, আগুনের চেহারাটা একই`
Js.log(firewood)

https://wiki.c2.com/?TenWordLine

1. Building blocks
  - Primitives: int, float, char, string, bool
  - type inference
  - Bindings
    - are immutable by default
    - shadowing
    - mutation 
    (leave a reference to this language feature as you progress through the tutorial)
    - block scope
2. Defining a new type (Shape of data)
  - Constructor only
  - Constructor with tagged data
  - Constructor with type variable
  - Recursive / self-referential types
3. Pattern matching
  - exhaustive pattern matching
  - functions which consume types
  - functions which produce types
4. Functions
  - currying, partial application
  - uncurried functions
  - recursive functions
    - auxillary function
  - uncurried function
  - anonymous
5. Labeled Arguments in Functions
  - labelling arugments when similar type values passed as arguments
  - optional labeled arguments
  - punning

  Key ideas:
  - runtime check vs compile time guarantees
*/

/*

https://www.hillelwayne.com/post/learning-a-language/?utm_source=hillelwayne&utm_medium=email

Progressive cheat sheets
https://www.hillelwayne.com/post/cheatsheets/?utm_source=hillelwayne&utm_medium=email

Building blocks
- integer
- bool
  - Are there more integers than bools?
- what is a type?
  - name for a collection of values
- define a new type
  type seasoning = Salt | Pepper
  - What is the type of Salt?
  - What is the type of Pepper?
- define a new type with constructor arguments
  type num = Zero | OneMoreThan(num)
  - Is Zero a num?
  - Is OneMoreThan(Zero) a num?
  - What is the type of OneMoreThan(OneMoreThan(Zero))?
  - How many vlues of num are possible?
- define a new type with type variable
  type openFacedSandwich('a) =
    | Bread('a)
    | Slice(openFacedSandwich('a))
    - What is Bread(0)?
    - What is Bread(true)?
    - How are they both the same types? They are not
    - A shape that represents many different types
    - Does that mean we can derive as many as types as 
      we want from the shape?
    - openFacedSandwich(int)
    - openFacedSandwich(bool)
    - openFacedSandwich(num)
      Bread((OneMoreThan(Zero)))      -> openFacedSandwich(num)
      Bread(Bread(OneMoreThan(Zero))) -> openFacedSandwich(openFacedSandwich(num))

  Moral
  -----
  1. Use type to describe types.
  2. When a type contains a lot of values, the type definition refers to itself.
  3. Use type variables with type to define shapes


  Pattern-matching
  Moral
  -----
  * The number and order of patterns in the defintion of a function should match
  that of the definition of the consumed data type
  * Functions that produces values of a data type must use the associated
  constructors to build data of that type

  Record
  Tuples

  Functions are people too
    let identity = x => x
    identity: 'a => 'a

    let trueMaker = x => true
    trueMaker: 'a => bool

  Moral
  -----
  Some functions consume values of arrow type; some produces
  values of arrow type
  Replace stars by arrows to reduce the number of values
  consumed and to increase the generality of the function defined.
  Some functions produce exceptions instead of values; some
  don't produce anything. Handle raised exceptions carefully.
  
  Modules, Functors
  Moral
  -----
  Real programs consist of many components. Specify the dependencies
  among these components using signatures and functors
 */
