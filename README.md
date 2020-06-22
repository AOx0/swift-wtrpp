# swift-wtrpp
**Current chapter: 1.6.1**

This proyect doesn't have anything special. Just personal notes and code following the exercises that the book by Marco Faella, *"Seriously Good Software  Code that works, wins, and survives."*, contains.

Main file at **swift-wtrpp / [main.swift](https://github.com/AOx0/swift-wtrpp/blob/master/swift-wtrpp/main.swift)**



Contents:

1. **[Software qualities](https://github.com/AOx0/swift-wtrpp#software-qualities)**
   - [External software qualities](https://github.com/AOx0/swift-wtrpp#external-software-qualities)
   - [Internal software qualities](https://github.com/AOx0/swift-wtrpp#internal-software-qualities)
   - [Extra qualities](https://github.com/AOx0/swift-wtrpp#extras)
2. [Notes](https://github.com/AOx0/swift-wtrpp#notes)



## Software qualities

The word quality should be intended as a characteristic that a piece of software may or may not have, not as its overall value, experts suggest organizing them according to two characteristics: internal vs external, and functional vs non-functional.

Functional and non-functional requirements pull software in different directions. It’s your job to find a balance.

- **Internal vs External**

External qualities: can be perceived by the end user while interacting with the system

Internal qualities: can be appraised only by looking at the source code.

-  **Internal vs External**

Functional qualities: what the software does. All functional qualities are external.

Non-functional qualities: how the software is. Can be either internal or external, depending on if is related to the code itself or to its emerging traits (characteristics).



<img src="https://github.com/AOx0/swift-wtrpp/blob/master/res/Untitled.png" style="zoom:25%;" />



### External software qualities

#### Correctness

*Adherence to stated objectives, aka **requirements or specifications**.*

Software must offer the functionalities that were agreed upon with the customer. **This is the functional quality by definition**. There can be no correctness if the developer doesn’t have a clear idea of the specifications they are aiming at.

**NOTE:** There are developers that firs write correct code and later that catch defects.

#### Robustness

*Resilience to incorrect inputs or adverse/unanticipated external conditions (such as the lack of some resource). Correctness and robustness are sometimes lumped together as reliability.*

Robust software checks that its inputs are valid, otherwise it reacts accordingly. If the error condition is fatal, **a robust program aborts after salvaging as much as possible** of the user data or computation.

**NOTE:** Error catch and treat. No crashes never (extreme), try always to keep the program alive.

#### Usability

*A measure of the effort needed to **learn how to use it** and to achieve its goals; **ease of use.***

Tied to its user interface (**UI**) and user experience (**UX**)

#### Efficiency

*Adequate consumption of resources.*

**Time and space** (memory) are the two resources that all programs consume. Efficiency is a mostly non-functional quality, because in general the user doesn’t care.

It becomes a functional issue in two contexts:

- In performance-critical applications. (Health care, high precision)
- Whenever the efficiency is so bad that it affects normal operations.



### Internal software qualities

Internal qualities are better appraised by looking at the source code.

#### Readability

*Clarity, understandability by fellow programmers.*

Easy to understand by another programmer, or by the author later. **Extremely important**

#### Reusability

*Ease to reuse the code to solve similar problems, and amount of changes needed to do so. Aka **adaptability**.*

The modern trend favors libraries and frameworks that are intentionally designed for reusability instead of OOP. 

**NOTE:** The trend is no longer the OOP, this is an exaggerated solution according to the author. Now the frameworks and libraries are better seen.

#### Testability

*Ability and ease of writing tests that can trigger all relevant program behaviors and observe their effects.*

Make this procedure of **testing easy to perform** repeatedly and automatically, with as little human intervention as possible. Allows the caller to **verify all expected behaviors**.

#### Maintainability

*Ease of finding and fixing bugs, as well as evolve the software.*

Maintainable software is **readable and modular**, with different parts having clearly defined responsibilities and interacting in clearly defined ways. **Testability and readability are among the main contributors to maintainability**



### Extras

#### Succinctness

*Writing the shortest possible program for a given task.*

Generally speaking, this isn’t a code quality at all. On the contrary, it leads to horrible, obscure code that pushes the language to its limits and challenges your knowledge.

Still, one can find practical scenarios where succinctness is a desired objective. Low-end embedded systems.

**NOTE:** Minimize as mush the size of the file to fit certain requierements.

#### Thread safety

*The ability of a class to work seamlessly in a multi-threaded environment.*

it applies only to the specific context of multi-threaded programs. It’s tempting to put thread safety among the internal qualities, but that would be a mistake. What’s truly hidden from the user is whether a program is sequential or multi-threaded.



# Notes

Some notes and chapter.

- Time and space efficiency may hinder (obstruct) readability and hence (as consequence) maintainability. Conversely, readable code uses more temporary variables and support methods, and shies away from those low-level performance hacks. Time and space efficiency make the cut, together with reliability, readability, and generality
- Maximizing robustness requires adding code that checks for abnormal circumstances and reacts in the proper way. Such checks incur a performance overhead, albeit usually quite limited. **Space efficiency need not be impacted in any way. Similarly, in principle there is no reason why robust code should be less readable**. 
- Maximizing any quality attribute requires deliberate effort and time.

##### Chapter 1.7

- **Saving extra information** is GOOD. It **increases the performance** and makes room for **future extensions**.

- Data saving approaches:

  1. Each container holds an up-to-date “amount” field. % This is the simplest choice. 16

  2. A separate “group” object holds the “amount” field.
  3. Only one container in each group—the representative --holds the up-to-date amount value, which applies to all containers in the group.

  Discuss pros and cons later.

- Think of future implementations and try to make the work to add them easy. This statrs thinking of what might be stored and the information and structure the program follows

What if you later want to remove all connections older than one hour? You should store the time when each connection was made! What if you want to know how many threads have created connections? You should store the set of threads that have ever created a connection, and so on.

##### Chapter 1.8 - 2.1

- **CLEAR VARIABLE NAMES!!**
- Information hiding (aka **encapsulation**) **is a fundamental** OO principle, enabling classes to ***ignore the internals of other classes*** and ***interact with them via a well-defined public interface*** (a form of separation of concerns)
- All constants should be assigned to some final variable.
- Is the method tolerant to this slight misstep by the caller?
- Think of and design classes, collections, etc. Base all selections in correctness and maintainlable code.
- **Programming to an interface** refers to the general idea of focusing your design efforts around APIs, rather than concrete implementations


