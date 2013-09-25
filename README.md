> A work-in-progress tutorial that explores functional programming techniques and technologies to build a modern, mobile web application using JavaScript and a Haskell-powered RESTful JSON API-server. 

## Overview of technologies

### Functional programming

Functional programming finds its origins in Alonzo Church’s Lambda Calculus (λ-calculus) — a logical theory of computable functions that predates the electronic computer. The first language based on ideas from λ-calculus was LISP. It was invented by John McCarthy in 1958.

As a form of declarative programming, code written in functional style carries no immediate sense of sequentiality. This makes it particularly well-suited for parallel and asynchronous programming, since it enables us to express the formal logic of a computation without thinking in terms of control flow or sequential progression.

In this context, conventional (non-functional) programming languages (C, C++, Java, PHP, etc.) are often referred to as *imperative*, or prescriptive languages. Intuitively, we may think of the difference as,

* imperative: a sequence of instructions that outline what a program should do;
* declarative: a collection of definitions that declare what things are.

Another key difference is that the function, as one could expect, has a much more central role. Functional programming languages treat functions as first-class values. They can be passed around as arguments, and used in declarations, similar to class-type objects in OOP.

Functional programming favors construction over mutation, and we think of a program more as a series of transformations. Thus, an important tool in functional programming is function composition, i.e., the process of applying one function to the output of another.

#### Pure functions

The term *pure* is often used to describe a property of expressions in functional programming. For a function to be considered pure, 

* it is not allowed to exhibit any *side effects*, and
* it must be *referentially transparent*.

Recall the black-box metaphor, used in numerous mathematical textbooks (illustration?), and according to which a function's internals are completely sealed off from the outside world. A side-effect is when a function or expression violates this principle — that is, the procedure is allowed to communicate in some way with other program units (e.g. to share and exchange information).

A function is said to be referentially transparent if (and only if) it, given the same input parameters, always produces the same output (return value). If one is looking for a raison d'être for *pure* functional programming, referential transparency is a good candidate. When reasoning with formulae in algebra, arithmetic, and logic, this property — also called *substitutivity of equals for equals* — is so fundamentally important that it is usually taken for granted.

### Haskell

Haskell is a modern, compiled, strongly typed, purely functional, programming language based on the (Girard-Reynolds) polymorphic lambda calculus, also known as System-F. The Haskell language standard is the result of over twenty years of research in programming language design.

GHC is the most commonly used Haskell compiler. It comes bundled with the Haskell platform — a comprehensive development environment available for Windows, Mac, and Linux.

Haskell belongs to a language family commonly referred to as *lazy* functional programming languages. Lazy evaluation is a technique used by compilers to implement a language property known as non-strictness. Strict and non-strict semantics differ in how evaluation of expressions propagates:

* In the more common, strict semantics, expressions are evaluated from the inside-out. (example)
* Under non-strict semantics, evaluation starts from the outside and unfolds towards the center. Sub-expressions are only computed when needed (call-by-need).

(example)

Although Haskell encompasses a sophisticated type system that supports polymorphism and an advanced form of systematic overloading; clever use of type inference allows for a very minimalistic and elegant syntax. Surprisingly, many times even more succinct than that of a dynamically typed scripting language:

    -- Insertion sort implementation

    import Data.List

    insort [] = []
    insort (x:xs) = insert x $ insort xs

This function accepts any list as input, as long as the type of its elments is an instance of the `Ord` type class:

    insort [4,3,1,5,8]
    [1,3,4,5,8]

    insort ['f','b','e','e']
    "beef"

### JavaScript

### JSON

### REST

### SQLite

## Part I. Server

### Happstack

### Language extensions

#### FlexibleContexts

#### Template Haskell

#### OverloadedStrings

#### RecordWildCards

...

The RecordWildCards extension introduces a simple notation that makes pattern matching over records a bit less verbose, in cases where many fields are involved.

### HaskellDB

HaskellDB is a combinator library for building syntactically correct, type-safe database queries, similar to the Language Integrated Query (LINQ) component in the .NET framework.

As an example, here is what a simple query can look like using HaskellDB:

    getContent = do
      content <- table T.content
      project $ F.id << content!F.id
  

The original HaskellDB library was written by Daan Leijen and Erik Meijer (who is also the architect behind LINQ). It draws heavily from concepts in relational algebra, and the theory behind HaskellDB is described in Leijen's PhD thesis: “The λ Abroad - A Functional Approach to Software Components.” Fortunately, understanding HaskellDB does not require deep knowledge in relational algebra, which serves in this context more as a theoretical foundation for relational databases.

#### The new HaskellDB

The first version of HaskellDB was relying on a feature called TRex – Typed records with extensibility – only available in the Hugs interpreter. Additionally, it only supported a Windows-specific ADO-based database backend. To address these, among other issues, a more recent, portable version of the library was developed by students at Chalmers University of Technology.

###### Student paper:

http://viblo.se/pmwiki/uploads/Projects/haskelldb.pdf

##### Connecting

We will be using SQLite in this tutorial. To connect to the database we define a `withDB` function, as described in the Chalmers paper:

    withDB :: (Database -> IO a) -> IO a
    withDB = hdbcConnect generator (connectSqlite3 "db.sqlite")

##### Preparing the tables

##### Querying

HaskellDB defines a Query monad, and queries are expressed using native Haskell functions.

...

### Aeson

In Greek mythology, Aeson was the father of Jason. In Haskell folklore, Aeson is a JSON parsing and generation library optimized for ease of use and high performance.

#### Creating a simple JSON type

##### ToJSON

##### FromJSON

### Resources

### Routes

### Database and schema

### Types

### Models

### Controllers


## Part II. Client

## Possible improvements
