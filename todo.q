
This is an ad hoc todo list I keep since the beginning. There's no
order to it and some of the remaining entries may be obsolete or
irrelevant.


TODO
====

* Fix `{to-string{} => s} = object` so that it binds properly
* Fix `a.b! c` so that it binds properly
* MAYBE: `{"a", "b"} each @to-upper-case{}`
* MAYBE: `each x -> x` ==> `[@] each x -> x`
* '''a 'b'''' should be equivalent to "a 'b'"
* MAYBE: swap "" and '' to make former interpolate

* add an easier to use context-based macro form (with typical contexts)
* add getter/setter for properties in classes?

* match x: ..., then result: ...
* improve match errors
* object each [k => v] -> [k => v + 1]
* true/false/null/undefined should be like ==true/... implicitly in patterns
* object, neighbours, etc. should handle iterators in general
* Make `predicate? x` behave like in a pattern everywhere (exception on no-match)
* perhaps `x! [a -> b, c -> d]` ==> `a -> x! b, c -> x! d` (same for ?)
* define special behavior for a % b in pattern context
* MAYBE: `class C{super}: ...` into `class C < super = ...`
* gen should be rebindable
* ? to return null/error instead of true/false
* ! to return {null/error, value} instead of {true/false, value}
* `using` should work like `with` in Python
* catch and finally clauses for do, match, if, and so on
* repr for generator

* f{a = 1, ...} and the like should be made more efficient.

* fallthrough in clauses

* x! y shouldn't return null when x throws an error

* allow for async generators
* async! f{match} will not work because of the wrapping. fix it
* some errors are misreported; check try: x, catch: y (with no
  variable in the catch).
* Allow catch with no variable for the error.
* await in interactive mode
* insert async/gen automatically if await/yield is seen in the body
  [is that a good idea?]
* `macro` should generate #restmacro to allow for its use below its
  definition in the same scope
* {[^Symbol.project]{x} = ...}
* A wrapper to print stack traces when calling an async functions
* `global x = 123`?
* Extend functions, e.g. `extend.top! f{x} = ...` and
  `extend.bottom! f{x} = ...`, or bind previous function to super...
* New macros should extend existing macros

* Come up with a reliable way to mix multiple wrapping handlers in
  patterns and prevent nonsensical combinations.
* f{each x, match} will complain that it cannot resolve each; figure
  out why that happens *exactly* and fix it.

* The "top" and "mutable" fields of #variable are too easy to lose
  track of despite its significance. Change to #variable{name, opts}
  or something like that.

* Produce an error when the same variable is found multiple times in a
  pattern
* '[...] should annotate the result with location information,
  otherwise embedded R"..." or S[...] do not work.
* Make unconditional transformers for String!, Number! and Boolean!
* maybe use \ for unquote?
* Use ES6 classes
* Use ES6 splats
* match_error could use being more precise
* make sure macros fail in non-supported contexts and don't have blanket
  [match context: ..., else -> blah] clauses
* let macros insert setup code at their definition site
* experiment with changing the priority of wide juxtaposition
* make it possible to do "earl compile src -o lib" instead of having
  to do "earl compile -o lib src"
* string interpolation, perhaps I"a \[x] b" ==> "a " + x + " b"
* fix nested each so that inner each is evaluated with #expr{.ignore}
  if outer each is


* f{match.0, match.1} = a -> b -> c ==> f{x, y} = match x: a -> match y: b -> c


* try! f{...} = ... ==> f{...} = try: ...

* Review how `with works: could it be a prefix operator?
* Add a where... or with... operator instead of with, when ... is used?

* index.eg

* language definition via: ||||| lang
* Create closures for variables inside loops
* define super for subclasses
* @@ for static methods

* set a function or arbitrary object as the main export for provide

* Support this projector: [-> String?] f{String?, String?} = ...

* pure ASCII repr{...}
* ditch pp submodule?
* print errors properly to a normal console

* Track types at declaration

* @prelude

* Eliminate ++ and -- for increment/decrement?

* IDEA: ~f{a, b, _} <=> {X} -> {a, b, X}

* Support: [String? or Number?] x
* Defaults for keyword arguments

* fix nested chain

* set up a priority matrix

* support [x each String?] [maybe not...]
* throw actual Error objects...

* add way to inject additional behavior to macros

* treat operator at beginning of line as a continuation

* Document with comments: src/earl-grey.eg
* Document with comments: src/expand.eg
* Document with comments: src/lex.eg
* Document with comments: src/location.eg
* Document with comments: src/parse.eg
* Document with comments: src/pattern.eg
* Document with comments: src/pp.eg
* Document with comments: src/register.eg
* Document with comments: src/run.eg
* Document with comments: src/stdenv.eg
* Document with comments: src/translate-js.eg

* Bug: first line in the file starts with spaces => should produce INDENT token


DONE
====

X Change behavior of a[b]
X "when" clauses for pattern matching
X Define Struct?
X Support project: String! s
X Define #struct! and #struct?
X Translate == to === and != to !==
X "else" clause for cond
X Support deconstruct: String? {a, b, c}
X Splicing in arrays
X `[f{|>} = ...] ==> `[f{tmp} = tmp |> ...]
X `[f{|>*} = ...] ==> `[f{tmp*} = tmp |> ...]
X each operator
X quote
X true? matches all true things, false? matches all false things
X Define Rx[...]? and Rx[...]!
X !! should re-raise error
X require: macro
X chain: macro
X % macro for html generation
X range operator
X with should seek "..."
X New regular expression syntax
X class: macro
X test: macro (find a better name) (blocktest)
X use .duck for the projector with "?"
X items{...}
X enumerate{...}
X "expr as var"
X rest arguments!
X field extraction in pattern matching: {=> name} = {name = "Peter"}
X default values for arguments in p.m.
X IRRELEVANT try to make #x{y, z} [nearly] as efficient as {.x, y, z}
X Replace [aslist! args] with [#multi! {*args}]
X avoid generating spurious ifs when one of the patterns can't fail
X Change chain to use let
X zip{...}
X add provide:
X unquote in require:
X error when each fails to find a pattern
X add each?
X &+ --> &
X clone operator
X Make & clone first object, so that #a{b} & {env = env} works
X Move == to ===, and implement proper equality for ==
X Change % to accept [prop = value] as children [done for React]
X remove instanceof operator
X ? and ! as infix operators
X splice: macro
X product{...}
X revamp the current operator priority mechanism with groups and named "tracks"
X Modify the priority of wide juxtaposition
X Indent regexp should consume comments (I think it's fixed, didn't bother to test)
X Track variable mutability at declaration
X "=" does mutation
X Remove the generation of spurious ";;"
X Error for mismatched brackets
X Make = valid in more contexts
X Fix paths when doing eval
X pass, else
X earlgrey.register
X Document with comments: src/opt.eg
X Document with comments: src/util.eg
X match in the arguments list of class members
X Change exception syntax
X Support single inheritance

X Preserve names for functions
X Remove :=

X Make ::check etc. non-enumerable
X [require:] inside [macros:]

X Upgrade neighbours to standard lib
X Make zip work with any number of arguments
X Make neighbours take a `n argument (it is currently only valid for n=2)
X investigate bug where some locations cannot be found
  (may be related to a mixup with the new version of ! and ?)
  (well, it looks like... it fixed itself? can't reproduce it anymore)
X `if` in expressions should generate ?:
X remove the if{x, y, else{z}} form
X remove `each?`
X improve gensym to be less heavy-handed; one counter per variable
  name, perhaps
X make unconditional #project more robust
X FIX: f! x = g{y} will include the code for g{y} twice (once in the
  success branch, once in the failure branch)
X Upgrade product to standard lib
X timeit macro
X Make `each` iterate over iterables
X x[1..10] instead of x.slice{1, 10}
X print x
X "::check" => Symbol.check, etc.
X add long strings: """xyz"""
X try: catch:
X f{each x} = x + 1 ==> f{xs} = xs each x -> x + 1
X f{chain} = @replace{.a, .b} ==> f{x} -> chain x: @replace{.a, .b}
X WONTFIX: Compare for equality when the same variable is found multiple times
  in a pattern
  REASON: it's easy enough to do {x, == x} -> ...
X each* as a generator alternative to each
X [x = [a, b, c]] can be translated as [a, b, c = x]; treat this case
  the same way expressions in return positions are treated.
X allow break/continue in list-building `each` by unhoisting the
  accum.push(...) as much as possible
  NOTE: the solution was simpler: [x = ..., accum.push{x}], and push
        the assignment in when translating
X fix obj[m]{...} so that it binds the function to this...
  IDEA: obj[m] translates to send(obj, m, true), which returns obj[m].bind(obj)


X Declare values in if, e.g. if [x = f{y}]: x
  OH: Turns out that already works? I guess it would.
X change the in operator to actually be useful
X Allow declaring variables like "n > 0 = 3"
X Figure out what `{x, y} = {1, 2}` should return
X expression `{x, get, y} = {1, 2, 3}` has value 2
X expression `{x, return, y} = {1, 2, 3}` returns 2
X expression `{x, yield, y} = {1, 2, 3}` yields 2
X info.gettext{node}
X emacro --> macro; macro --> cmacro?
X change macro{ctx, scope, form, expr} to cmacro{ctx, expr}
  and make scope and form available in this (only for user code)
X info.mark{*nodes}
X fix emacro's interaction with ! when not in a pattern
X Embed promisify
X quasiquote with `a + b` instead of '[a + b]
X left-priority of `each` should be higher
X source maps
X `is` should be `===`
X maybe replace ... with ??? and make ... an exclusive range
  replaced ... with ___
X raise left-priority of juxtaposition
X outer
X tag scope and restore scope
X empty lhs for ->
X Detect circular references in repr
X {a, b, c = 1} ==> {a, b} & {c = 1, "::insert" = 2}
  send{x, y} would transform y into {a, b, {c = 1}}
X `async: non-function` should auto-wrap the code
X MAYBE: gen! f{x} and async! f{x} ==> gen f{x} and async f{x}
X Allow f{=> x, => y} as shortcut for f{{=> x, => y}} (etc.)
X `require` should fail when importing symbols that were not exported
  by a module

X make -l (lazy) a default flag, add -r or -R to override

X `macro f{x}: ...` should become `macro f{x} = ...`
X revamp the blocktest macro (rename to tests?)
  REMOVED IT
X find a way to make macros more importable
  idea: macro_require inserts also require(package), which is used to
        resolve symbols in the macro's namespace (requires what the macro
        is using to be provided, though)

X Fix `a??.b??{c}` to bind `a.b` properly
X `[x >> x + 1] = 5` ==> x is 6
X print b % x probably shouldn't parse as [print b] % x
X unquote in patterns, e.g. {^Symbol.iterator => it} = ...
X rename get/set macros to something less common?
  renamed them expr-value/set-var

