### A Pluto.jl notebook ###
# v0.19.41

using Markdown
using InteractiveUtils

# ╔═╡ 7b025df6-013c-11ef-3e87-2f02f9ef5be1
md"# Preliminaries"

# ╔═╡ ad39fe0b-dcc3-4a12-8128-81b5463a6b33
md"""## Logic
### Propositions

A *proposition* or *statement* is a declarative sentence which is true ``T`` or false ``F`` , but not both.

!!! examples
	* Brussels is in Belgium: ``T``
	* ``2+2=3``: ``F``
	* ``x=2`` is a solution of ``x^2=4``: ``T``

Many propositions are *composite*, that is, composed of *subpropositions* and various *connectives* discussed subsequently. Such composite propositions are called *compound propositions*. A proposition is said to be *primitive* if it cannot be broken down into simpler propositions.

!!! principle
	The fundamental property of a compound proposition is that its truth value is completely determined by the truth values of its subpropositions together with the way in which they are connected to form the compound proposition.

### Connectives

Any two propositions ``\mathcal{P}`` and ``\mathcal{Q}`` can be combined by the word "and" to form a compound proposition called the *conjunction* of ``\mathcal{P}`` and ``\mathcal{Q}`` , denoted ``\mathcal{P}\wedge \mathcal{Q}`` and read " ``\mathcal{P}`` and ``\mathcal{Q}`` ". If ``\mathcal{P}`` and ``\mathcal{Q}`` are true, then ``\mathcal{P}\wedge \mathcal{Q}`` is true; otherwise ``\mathcal{P}\wedge \mathcal{Q}`` is false. The truth value of ``\mathcal{P}\wedge \mathcal{Q}`` may be defined equivalently by the following truth table:

| ``\mathcal{P}`` | ``\mathcal{Q}`` | ``\mathcal{P}\wedge \mathcal{Q}``  |
| :-: | :-: | :-: |
| ``T`` | ``T`` | ``T``  |
| ``T`` | ``F`` | ``F``  |
| ``F`` | ``T`` | ``F``  |
| ``F`` | ``F`` | ``F``  |

Any two propositions ``\mathcal{P}`` and ``\mathcal{Q}`` can be combined by the word "or" to form a compound proposition called the *disjunction* of ``\mathcal{P}`` and ``\mathcal{Q}`` , denoted ``\mathcal{P}\vee \mathcal{Q}`` and read " ``\mathcal{P}`` or ``\mathcal{Q}`` ". If ``\mathcal{P}`` and ``\mathcal{Q}`` are false, then ``\mathcal{P}\vee \mathcal{Q}`` is false; otherwise ``\mathcal{P}\vee \mathcal{Q}`` is true. The truth value of ``\mathcal{P}\vee \mathcal{Q}`` may be defined equivalently by the following truth table:

| ``\mathcal{P}`` | ``\mathcal{Q}`` | ``\mathcal{P}\vee \mathcal{Q}``  |
| :-: | :-: | :-: |
| ``T`` | ``T`` | ``T``  |
| ``T`` | ``F`` | ``T``  |
| ``F`` | ``T`` | ``T``  |
| ``F`` | ``F`` | ``F``  |

Any proposition ``\mathcal{P}`` can be preceded by the word "not" to form a new proposition called the *negation* of ``\mathcal{P}`` , denoted ``\lnot \mathcal{P}`` and read "not ``\mathcal{P}`` ". If ``\mathcal{P}`` is true, then ``\lnot \mathcal{P}`` is false; and if If ``\mathcal{P}`` is false, then ``\lnot \mathcal{P}`` is true. The truth value of ``\lnot \mathcal{P}`` may be defined equivalently by the following truth table: 

| ``\mathcal{P}`` | ``\lnot \mathcal{P}``  |
| :-: | :-: |
| ``T`` | ``F``  |
| ``F`` | ``T``  |


A proposition containing only ``T`` in the last column of its truth table is called a *tautology* denoted ``\top`` , eg.

| ``\mathcal{P}`` | ``\lnot \mathcal{P}`` | ``\mathcal{P}\vee \lnot \mathcal{P}``  |
| :-: | :-: | :-: |
| ``T`` | ``F`` | ``T``  |
| ``F`` | ``T`` | ``T``  |

A proposition containing only ``F`` in the last column of its truth table is called a *contradiction* denoted ``\bot`` , eg.

| ``\mathcal{P}`` | ``\lnot \mathcal{P}`` | ``\mathcal{P}\wedge \lnot \mathcal{P}``  |
| :-: | :-: | :-: |
| ``T`` | ``F`` | ``F``  |
| ``F`` | ``T`` | ``F``  |

### Logical Equivalence

The propositions ``\mathcal{P}`` and ``\mathcal{Q}`` are said to be *logically equivalent*, denoted by ``\mathcal{P}\equiv \mathcal{Q}`` if they have identical truth tables.


!!! example
	Show that ``\lnot (\mathcal{P}\wedge \mathcal{Q})\equiv \lnot \mathcal{P}\vee \lnot \mathcal{Q}`` 

| ``\mathcal{P}`` | ``\mathcal{Q}`` |  | ``\mathcal{P}\wedge \mathcal{Q}`` | ``\lnot (\mathcal{P}\wedge \mathcal{Q})`` |  | ``\lnot \mathcal{P}`` | ``\lnot \mathcal{Q}`` | ``\lnot \mathcal{P}\vee \lnot \mathcal{Q}``  |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| ``T`` | ``T`` |  | ``T`` | ``F`` |  | ``F`` | ``F`` | ``F``  |
| ``T`` | ``F`` |  | ``F`` | ``T`` |  | ``F`` | ``T`` | ``T``  |
| ``F`` | ``T`` |  | ``F`` | ``T`` |  | ``T`` | ``F`` | ``T``  |
| ``F`` | ``F`` |  | ``F`` | ``T`` |  | ``T`` | ``T`` | ``T``  |

!!! theorems 
	1.  ``\mathcal{P}\vee \mathcal{P}\equiv \mathcal{P}`` and ``\mathcal{P}\wedge \mathcal{P}\equiv \mathcal{P}`` (idempotent laws)
	2. ``\mathcal{P}\vee \mathcal{Q}\equiv \mathcal{Q}\vee \mathcal{P}`` and ``\mathcal{P}\wedge \mathcal{Q}\equiv \mathcal{Q}\wedge \mathcal{P}`` (commutative laws)
	3. ``\mathcal{P}\vee (\mathcal{Q}\vee \mathcal{R})\equiv (\mathcal{P}\vee (\mathcal{Q})\vee \mathcal{R}\equiv \mathcal{P}\vee \mathcal{Q}\vee \mathcal{R}`` and ``\mathcal{P}\wedge (\mathcal{Q}\wedge \mathcal{R})\equiv (\mathcal{P}\wedge (\mathcal{Q})\wedge \mathcal{R}\equiv \mathcal{P}\wedge \mathcal{Q}\wedge \mathcal{R}`` (associative laws)
	4. ``\mathcal{P}\wedge (\mathcal{Q}\vee \mathcal{R})\equiv (\mathcal{P}\wedge \mathcal{Q})\vee (\mathcal{P}\wedge \mathcal{R})`` and ``\mathcal{P}\vee (\mathcal{Q}\wedge \mathcal{R})\equiv (\mathcal{P}\vee \mathcal{Q})\wedge (\mathcal{P}\vee \mathcal{R})`` (distributive laws)
	5. ``\mathcal{P}\vee \bot \equiv \mathcal{P}`` and ``\mathcal{P}\wedge \bot \equiv \bot`` (identity laws)
	6. ``\mathcal{P}\vee \top \equiv \top`` and ``\mathcal{P}\wedge \top \equiv \mathcal{P}`` (identity laws)
	7. ``\mathcal{P}\vee \lnot \mathcal{P}\equiv \top`` and ``\mathcal{P}\wedge \lnot \mathcal{P}\equiv \bot`` (complement laws)
	8. ``\lnot \top \equiv \bot`` and ``\lnot \bot \equiv \top`` (complement laws)
	9. ``\lnot (\lnot \mathcal{P})\equiv \mathcal{P}`` (involution law)
	10. ``\lnot (\mathcal{P}\vee \mathcal{Q})\equiv \lnot \mathcal{P}\wedge \lnot \mathcal{Q}`` and ``\lnot (\mathcal{P}\wedge \mathcal{Q})\equiv \lnot \mathcal{P}\vee \lnot \mathcal{Q}`` (DeMorgan's laws)

!!! exercise
	Use a truth table to show the logical equivalences of the propositions in the theorems.

### Conditional Propositions

Many statements are of the form "If ``\mathcal{P}`` then ``\mathcal{Q}`` . Such statements are called *conditional propositions*, and are denoted by ``\mathcal{P}\Rightarrow \mathcal{Q}`` . The conditional ``\mathcal{P}\Rightarrow \mathcal{Q}`` is frequently read " ``\mathcal{P}`` implies ``\mathcal{Q}`` ", or " ``\mathcal{P}`` only if ``\mathcal{Q}`` ".

Another common statement is of the form " ``\mathcal{P}`` if and only if ``\mathcal{Q}`` ". Such statements are called *biconditional propositions*, and are denoted by ``\mathcal{P}\Leftrightarrow \mathcal{Q}`` .


Their truth values are defined by following truth tables:

| ``\mathcal{P}`` | ``\mathcal{Q}`` |  | ``\mathcal{P}\Rightarrow \mathcal{Q}`` |  | ``\lnot \mathcal{P}`` | ``\lnot \mathcal{P}\vee \mathcal{Q}`` |  | ``\mathcal{P}\Leftrightarrow \mathcal{Q}`` |  | ``\mathcal{Q}\Rightarrow \mathcal{P}`` | ``(\mathcal{P}\Rightarrow \mathcal{Q})\wedge (\mathcal{Q}\Rightarrow \mathcal{P})``  |
| :-: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: | :--: |
| ``T`` | ``T`` |  | ``T`` |  | ``F`` | ``T`` |  | ``T`` |  | ``T`` | ``T``  |
| ``T`` | ``F`` |  | ``F`` |  | ``F`` | ``F`` |  | ``F`` |  | ``T`` | ``F``  |
| ``F`` | ``T`` |  | ``T`` |  | ``T`` | ``T`` |  | ``F`` |  | ``F`` | ``F``  |
| ``F`` | ``F`` |  | ``T`` |  | ``T`` | ``T`` |  | ``T`` |  | ``T`` | ``T``  |

Observe that:

1.  The conditional ``\mathcal{P}\Rightarrow \mathcal{Q}`` is false only when the first part ``\mathcal{P}`` is true and the second part ``\mathcal{Q}`` is false. Accordingly, when ``\mathcal{P}`` is false, the conditonal ``\mathcal{P}\Rightarrow \mathcal{Q}`` is false regardless of the truth value of ``\mathcal{Q}`` .
2. ``\mathcal{P}\Rightarrow \mathcal{Q}`` is logically equivalent to ``\lnot \mathcal{P}\vee \mathcal{Q}`` .
3. The biconditional ``\mathcal{P}\Leftrightarrow \mathcal{Q}`` is true whenever ``\mathcal{P}`` and ``\mathcal{Q}`` have the samen truth values and false otherwise.
4. ``\mathcal{P}\Leftrightarrow \mathcal{Q}`` is logically equivalent to ``(\mathcal{P}\Rightarrow \mathcal{Q})\wedge (\mathcal{Q}\Rightarrow \mathcal{P})`` . ``\mathcal{Q}\Rightarrow \mathcal{P}`` is called the *converse* of ``\mathcal{P}\Rightarrow \mathcal{Q}`` .
"""

# ╔═╡ bdcc61dc-65ca-4570-95f1-2934b03270f6
md"""## Sets and Functions
### Sets

A *set* is a collection of objects called *elements* of the set. In general, we denote a set by a capital letter and an element by a lower case letter. If an element ``a`` belongs to a set ``S`` we write ``a\in S`` . If ``a`` does not belong to ``S`` we write ``a\not\in S``.

A set can be described by listing its elements in braces separated by commas, eg. ``\lbrace a,e,i,o,u\rbrace`` , or by describing some property held by all elements, eg. ``\lbrace x\mid x\;\textrm{is}\;\textrm{a}\;\textrm{vowel}\rbrace`` .

If each element of a set ``A`` belongs to a set ``B`` we call ``A`` a *subset* of ``B`` , written ``A\subset B`` . If ``A\subset B`` and ``B\subset A`` we call ``A`` and ``B`` *equal* and write ``A=B``.

Often we restrict our discussion to subsets of a particular set called the *universe* or the *universal set* denoted by ``\Omega`` , eg. the set of the letters of the roman alphabet.

It is useful to consider a set having no elements at all. This is called the *empty set* and is denoted by ``\emptyset`` . It is a subset on any set.

A universe ``\Omega`` can be represented geometrically by the set of points inside a rectangle. In such case subsets of ``\Omega`` such as ``A`` and ``B`` are represented by sets of points inside ellipses. Such diagrams, called *Venn diagrams*, often serve to provide geometric intuition regarding possible relationships between sets.

!!! theorem
	If ``A\subset B`` and ``B\subset C`` , then ``A\subset C``.

!!! proof

	*SET THE CONTEXT:* Suppose that ``A`` , ``B`` and ``C`` are sets for which ``A\subset B`` and ``B\subset C``.
	
	*ASSERT THE HYPOTHESIS:* Let ``x\in A``.
	
	*LIST IMPLICATIONS:*
	
	1.  Since ``x\in A`` , it is true that ``x\in B`` by the definition of subset.
	2. Since ``x\in B`` , it is true that ``x\in C`` by the definition of subset.
	
	*STATE THE CONCLUSION:* Therefore, by the definition of subset, ``A\subset C`` .

### Set Operations

The set of all elements which belong to ``A`` or ``B`` is called the *union* of ``A`` and ``B`` and is denoted by ``A\cup B``.

The set of all elements which belong to ``A`` and ``B`` is called the *intersection* of ``A`` and ``B`` and is denoted by ``A\cap B`` . Two sets ``A`` and ``B`` such that ``A\cap B=\emptyset`` are called *disjoint sets*.

The set consisting of all elements of ``A`` which do not belong to ``B`` is called the *difference* of ``A`` and ``B`` denoted by ``A\setminus B``.

The set consisting of all elements of ``\Omega`` which do not belong to ``A`` is called the *complement* of ``A`` denoted by ``A^c =\Omega \setminus A``.

!!! theorems

	1.  ``A\cup A=A`` and ``A\cap A=A`` (idempotent laws)
	2. ``A\cup B=B\cup A`` and ``A\cap B=B\cap A`` (commutative laws)
	3. ``A\cup (B\cup C)=(A\cup B)\cup C=A\cup B\cup C`` and ``A\cap (B\cap C)=(A\cap B)\cap C=A\cap B\cap C`` (associative laws)
	4. ``A\cap (B\cup C)=(A\cap B)\cup (A\cap C)`` and ``A\cup (B\cap C)=(A\cup B)\cap (A\cup C)`` (distributive laws)
	5. ``A\cup \emptyset =A`` and ``A\cap \emptyset =\emptyset`` (identity laws)
	6. ``A\cup \Omega =\Omega`` and ``A\cap \Omega =A`` (identity laws)
	7. ``A\cup A^c =\Omega`` and ``A\cap A^c =\emptyset`` (complement laws)
	8. ``\Omega^c =\emptyset`` and ``\emptyset^c =\Omega`` (complement laws)
	9. ``(A^c )^c =A`` (involution law)
	10. ``(A\cup B)^c =A^c \cap B^c`` and ``(A\cap B)^c =A^c \cup B^c`` (DeMorgan's laws)
	11. ``A\setminus B=A\cap B^c``
	12. If ``A\subset B`` , then ``B^c \subset A^c``
	13. ``A=(A\cap B)\cup (A\cap B^c )``

!!! proof "Proof of the first law of DeMorgan"

	*SET THE CONTEXT:* Suppose that ``A`` and ``B`` are any two sets.
	
	*PART 1:* ``(A\cup B)^c \subset A^c \cap B^c`` 
	
	*ASSERT THE HYPOTHESIS:* Let ``x\in (A\cup B)^c``.
	
	*LIST IMPLICATIONS:*
	
	1.  By the definition of set complement, ``x\not\in A\cup B`` .
	2. If ``x\in A`` or ``x\in B`` , then ``x\in A\cup B`` which is false.
	3. Thus, ``x\not\in A`` and ``x\not\in B`` , so by the definition of set complement ``x\in A^c`` and ``x\in B^c`` .
	4. By the definition of set intersection ``x\in A^c \cap B^c``.
	
	*CONCLUSION PART 1:* Hence, from the definition of subset, it follows that ``(A\cup B)^c \subset A^c \cap B^c``.
	
	*PART 2:* ``A^c \cap B^c \subset (A\cup B)^c`` 
	
	*ASSERT THE HYPOTHESIS:* Let ``x\in A^c \cap B^c`` .
	
	*LIST IMPLICATIONS:*
	
	1.  By the definition of set intersection, ``x\in A^c`` and ``x\in B^c`` .
	2. Thus by the definition of set complement, ``x\not\in A`` and ``x\not\in B`` .
	3. If ``x\in A\cup B`` , then by the definition of the union, it would follow that ``x\in A`` or ``x\in B`` which is false.
	4. Thus, ``x\not\in A\cup B`` , and by definition of set complement ``x\in (A\cup B)^c``.
	
	*CONCLUSION PART 2:* Hence, from the definition of subset, it follows that ``A^c \cap B^c \subset (A\cup B)^c``.
	
	*STATE THE CONCLUSION:* Therefore, because ``(A\cup B)^c`` and ``A^c \cap B^c`` are subsets of each other, by the definition of set equality ``(A\cup B)^c =A^c \cap B^c``.

!!! exercise

	Proof the other theorems.

### Cartesian Product

The set of all *ordered pairs* of elements ``(x,y)`` where ``x\in A`` and ``y\in B`` is called the *Cartesian product* or *product set* of ``A`` and ``B`` and is denoted by ``A\times B`` . In general, ``A\times B\not= B\times A``.

The notion of Cartesian product can be generalized to ordered tuples of element ``(x,y,z,\ldots)``.

### Functions

A function ``f`` from a set ``X`` to a set ``Y`` , often written ``f:X\to Y`` , is a rule which assigns to each ``x\in X`` a unique element ``y\in Y`` . The element ``y`` is called the *image* of ``x`` under ``f`` and is denoted by ``f(x)`` . If ``A\subset X`` , then ``f(A)`` is the set of all elements ``f(x)`` where ``x\in A`` and is called the *image* of ``A`` under ``f`` . Symbols ``x`` and ``y`` are called *variables*.

A function ``f:X\to Y`` can also be defined as a subset of the Cartesian product ``X\times Y`` such that if ``(x_1 ,y_1 )`` and ``(x_2 ,y_2 )`` are in this subset and ``x_1 =x_2`` , then ``y_1 =y_2`` .

The set ``X`` is called the *domain* of ``f`` and ``f(X)`` is called the *range* of ``f`` . If ``Y=f(X)`` we say that ``f`` is from ``X`` onto ``Y`` and refer to ``f`` as a *surjective* function.

If an element ``a\in A\subset X`` maps into an element ``b\in B\subset Y`` , then ``a`` is called the *inverse image* of ``b`` under ``f`` and is denoted by ``f^{-1} (b)`` . The set of all ``x\in X`` for which ``f(x)\in B`` is called the *inverse image* of ``B`` under ``f`` and is denoted by ``f^{-1} (B)``.

If ``f(a_1 )=f(a_2 )`` only when ``a_1 =a_2`` , we say that ``f`` is an *injective* function.

If a function ``f:X\to Y`` is both surjective and injective, we say there is a one to one correspondence between ``X`` and ``Y`` and call ``f`` a *bijective* function. Given any element ``y\in Y`` , there will be only one element ``f^{-1} (y)`` in ``X`` . In such case ``f^{-1}`` will define a function from ``Y`` to ``X`` called the *inverse function*.

### Cardinal Numbers

Two sets ``A`` and ``B`` are called *equivalent* and we write ``A\sim B`` if there exists a one to one correspondence between ``A`` and ``B`` .

!!! theorem
	If ``A\sim B`` and ``B\sim C`` , then ``A\sim C`` .

!!! axioms "Axioms of Peano"

	1. ``0`` is a natural number.
	2. Every natural number has a successor which is also a natural number.
	3. ``0`` is not the successor of any natural number.
	4. If the successor of ``x`` equals the successor of ``y`` , then ``x`` equals ``y`` .
	5. If a statement is true for ``0`` , and if the truth of that statement for a natural number implies its truth for the successor of that natural number, then the statement is true for every natural number. (*Axiom of induction*)

The set of natural number is denoted by ``\mathbb{N}``.

A set which is equivalent to the set ``\lbrace 1,2,3,\ldots,n\rbrace`` for some ``n\in \mathbb{N}`` is called *finite*; otherwise it is called *infinite*.

An infinite set which is equivalent to the set of natural numbers is called *denumerable*; otherwise it is called *non-denumerable*.

A set which is either empty, finite or denumerable is called *countable*; otherwise it is called *non-countable*.

The *cardinal number* of the set ``\lbrace 1,2,3,\ldots,n\rbrace`` as well as any set equivalent to it is defined to be ``n`` . The cardinal number of any denumerable set is defined as ``\aleph_0`` , *aleph null*. The cardinal number of the empty set ``\emptyset`` is defined as ``0``.

The cardinal number of a set ``S`` is denoted by ``\# S``.

### Propositional Functions and Quantifiers

Let ``A`` be a given set. A *propositional function* defined on ``A`` is a function ``A\to \lbrace T,F\rbrace :\mathcal{P}(x)`` which has the property that ``\mathcal{P}(a)`` is true or false for each ``a\in A`` . That is, ``\mathcal{P}(x)`` becomes a proposition (with a truth value) whenever any element ``a\in A`` is substituted for the variable ``x`` . The set ``T_{\mathcal{P}}`` of all elements of ``a\in A`` for which ``\mathcal{P}(a)`` is true is called the *truth set* of ``\mathcal{P}(x)`` .

!!! examples

	Find the truth set ``T_{\mathcal{P}}`` of each propositional function ``\mathcal{P}(x)`` defined on ``\mathbb{N}`` .
	
	* Let ``\mathcal{P}(x)`` be " ``x+2>7`` ". Then ``T_{\mathcal{P}} =\lbrace x\mid x\in \mathbb{N},x+2>7\rbrace =\lbrace 6,7,8,\ldots\rbrace`` . 
	* Let ``\mathcal{P}(x)`` be " ``x+5<3`` ". Then ``T_{\mathcal{P}} =\lbrace x\mid x\in \mathbb{N},x+5<3\rbrace =\emptyset`` . In other words, ``\mathcal{P}(x)`` is false for any natural number. 
	* Let ``\mathcal{P}(x)`` be " ``x+5>1`` ". Then ``T_{\mathcal{P}} =\lbrace x\mid x\in \mathbb{N},x+5>1\rbrace =\mathbb{N}`` . Thus ``\mathcal{P}(x)`` is true for every natural number. 

Let ``\mathcal{P}(x)`` be a propositional function defined on a set ``A`` . Consider the expression " ``\forall x\in A:\mathcal{P}(x)`` " which reads "For every ``x`` in ``A`` , ``\mathcal{P}(x)`` is a true statement". The symbol ``\forall`` which reads "for all" or "for every" is called the *universal quantifier*. The proposition ``\forall x\in A:\mathcal{P}(x)`` expresses that the truth set of ``\mathcal{P}(x)`` is the entire set ``A`` , or symbolically, ``T_{\mathcal{P}} =\lbrace x\mid x\in A,\mathcal{P}(x)\rbrace =A`` .

!!! examples

	* The proposition ``\forall n\in \mathbb{N}:n+4>3`` is true since ``\lbrace n:n\in \mathbb{N},n+4>3\rbrace =\mathbb{N}``. 
	* The proposition ``\forall n\in \mathbb{N}:n+2>8`` is false since ``\lbrace n:n\in \mathbb{N},n+2>8\rbrace =\lbrace 7,8,9,\ldots\rbrace``. 
	* The symbol ``\forall`` can be used to define the intersection of an indexed collection ``\lbrace A_i :i\in I\rbrace`` of sets ``A_i`` as follows: ``\bigcap_{i\in I} A_i =\lbrace x:\forall i\in I,x\in A_i \rbrace``. 

Let ``\mathcal{P}(x)`` be a propositional function defined on a set ``A`` . Consider the expression " ``\exists x\in A:\mathcal{P}(x)`` " which reads "There exists an ``x`` in ``A`` such that ``\mathcal{P}(x)`` is a true statement". The symbol ``\exists`` which reads "there exists" or "for some" or "for at least one" is called the *existential quantifier*. The proposition ``\exists x\in A:\mathcal{P}(x)`` expresses that the truth set of ``\mathcal{P}(x)`` is not the emptyset, or symbolically, ``T_{\mathcal{P}} =\lbrace x\mid x\in A,\mathcal{P}(x)\rbrace \not= \emptyset``.

!!! examples

	* The proposition ``\exists n\in \mathbb{N}:n+4<7`` is true since ``\lbrace n:n\in \mathbb{N},n+4<7\rbrace =\lbrace 0,1,2\rbrace \not= \emptyset`` . 
	* The proposition ``\forall n\in \mathbb{N}:n+6<4`` is false since ``\lbrace n:n\in \mathbb{N},n+6<4\rbrace =\emptyset`` . 
	* The symbol ``\exists`` can be used to define the intersection of an indexed collection ``\lbrace A_i :i\in I\rbrace`` of sets ``A_i`` as follows: ``\bigcup_{i\in I} A_i =\lbrace x:\exists i\in I,x\in A_i \rbrace`` . 

Consider the proposition: "All officers are engineers". Its negation is either of the following equivalent statements:

* "It is not the case that all officers are engineers". 
* "There exists at least one officer who is not an engineer". 

Symbolically, using ``M`` to denote the set of officers, the above can be written as

```math
\lnot (\forall x\in M:x\;\textrm{is}\;\textrm{an}\;\textrm{engineer}\;)\equiv \exists x\in M:x\;\textrm{is}\;\textrm{not}\;\textrm{an}\;\textrm{engineer}\,,
```

or, when ``\mathcal{P}(x)`` denotes " ``x`` is an engineer",

```math
\lnot (\forall x\in M:\mathcal{P}(x))\equiv \exists x\in M:\lnot \mathcal{P}(x)\,.
```

The above is true for any proposition ``\mathcal{P}(x)`` .

!!! theorem "First theorem of DeMorgan"

	``\lnot (\forall x\in A:\mathcal{P}(x))\equiv \exists x\in A:\lnot \mathcal{P}(x)`` .

In other words, the following two statements are equivalent:

* It is not true that, for all ``a\in A`` , ``\mathcal{P}(a)`` is true. 
* There exists an ``a\in A`` such that ``\mathcal{P}(a)`` is false. 

There is an analogous theorem for the negation of a proposition which contains the existential quantifier.

!!! theorem "Second theorem of DeMorgan"

	``\lnot (\exists x\in A:\mathcal{P}(x))\equiv \forall x\in A:\lnot \mathcal{P}(x)`` .

That is, the following two statements are equivalent:

* It is not true that, for some ``a\in A`` , ``\mathcal{P}(a)`` is true. 
* For all ``a\in A`` , ``\mathcal{P}(a)`` is false. 

Previously, ``\lnot`` was used as an operation on propositions, here ``\lnot`` is used as an operation on propositional functions. The operations ``\vee`` and ``\wedge`` can also be applied to propositional functions. In terms of truth sets:

1.  ``\lnot \mathcal{P}(x)`` is the complement of ``T_{\mathcal{P}}`` , that is ``T_{\mathcal{P}}^c`` .
2. ``\mathcal{P}(x)\vee \mathcal{Q}(x)`` is the union of ``T_{\mathcal{P}}`` and ``T_{\mathcal{Q}}`` , that is ``T_{\mathcal{P}} \cup T_{\mathcal{Q}}`` .
3. ``\mathcal{P}(x)\wedge \mathcal{Q}(x)`` is the intersection of ``T_{\mathcal{P}}`` and ``T_{\mathcal{Q}}`` , that is ``T_{\mathcal{P}} \cap T_{\mathcal{Q}}`` .

A propositional function of 2 variables defined over a product set ``A=A_1 \times A_2`` is a function ``A_1 \times A_2 \to \lbrace T,F\rbrace :\mathcal{P}(x_1 ,x_2 )`` which has the property that ``\mathcal{P}(a_1 ,a_2 )`` is true or false for any pair ``(a_1 ,a_2 )`` in ``A`` .


A propositional function can be generalized over a product set of more than 2 sets. The following principle is generic.

!!! principle

	A propositional function preceded by a quantifier for each variable denotes a proposition and has a truth value.

!!! example

	Let ``B=\lbrace 1,2,3,\ldots,9\rbrace`` and let ``\mathcal{P}(x,y)`` denotes " ``x+y=10`` ". Then ``\mathcal{P}(x,y)`` is a propositional function on ``A=B\times B`` .

	1.  The following is a proposition since there is a quantifier for each variable: ``\forall x\in B,\exists y\in B:\mathcal{P}(x,y)`` that is, "For every ``x`` in ``B`` , there exists a ``y`` in ``B`` such that ``x+y=10`` ". This statement is true.
	2. The following is also a proposition: ``\exists y\in B,\forall x\in B:\mathcal{P}(x,y)`` that is, "There exists a ``y`` in ``B`` such that, for every ``x`` in ``B`` , we have ``x+y=10`` ". No such ``y`` exists; hence the statement is false.

!!! warning

	Observe that the only difference between both examples is the order of the quantifiers. Thus a different ordering of the quantifiers may yield a different statement!

!!! theorems

	For any propositional function ``\mathcal{P}(x,y)`` :
	
	1.  ``\forall x\in A,\forall y\in B:\mathcal{P}(x,y)~\Leftrightarrow ~\forall y\in B,\forall x\in A:\mathcal{P}(x,y)`` .
	2. ``\exists x\in A,\exists y\in B:\mathcal{P}(x,y)~\Leftrightarrow ~\exists y\in B,\exists x\in A:\mathcal{P}(x,y)`` .
	3. ``\exists x\in A,\forall y\in B:\mathcal{P}(x,y)~\Rightarrow ~\forall y\in B,\exists x\in A:\mathcal{P}(x,y)`` .
	4. ``\forall x\in A,\exists y\in B:\mathcal{P}(x,y)~\nRightarrow ~\exists y\in B,\forall x\in A:\mathcal{P}(x,y)`` .

Quantified statements with more than one variable may be negated by successively applying the theorems of DeMorgan. Thus each ``\forall`` is changed to ``\exists`` , and each ``\exists`` is changed to ``\forall`` as the nagation symbol ``\lnot`` passes through the statement from left to right.

!!! examples 
	* ``\lnot (\forall x\in A,\exists y\in B,\exists z\in C:\mathcal{P}(x,y,z))\equiv \exists x\in A,\lnot (\exists y\in B,\exists z\in C:\mathcal{P}(x,y,z))\equiv`` ``\exists x\in A,\forall y\in B,\lnot (\exists z\in C:\mathcal{P}(x,y,z))\equiv \exists x\in A,\forall y\in B,\forall z\in C:\lnot \mathcal{P}(x)`` . 
	* Consider the proposition: "Every student has at least one course where the lecturer is an officer". Its negation is the statement: "There is a student such that in every course the lecturer is not an officer". 

"""

# ╔═╡ Cell order:
# ╟─7b025df6-013c-11ef-3e87-2f02f9ef5be1
# ╟─ad39fe0b-dcc3-4a12-8128-81b5463a6b33
# ╟─bdcc61dc-65ca-4570-95f1-2934b03270f6
