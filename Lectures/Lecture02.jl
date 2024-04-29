### A Pluto.jl notebook ###
# v0.19.41

using Markdown
using InteractiveUtils

# ╔═╡ bdd4c99e-0276-11ef-1fe1-4b6392448c9f
begin
	import Pkg
	io = IOBuffer()
    Pkg.activate(io = io)
	deps = [pair.second for pair in Pkg.dependencies()]
	direct_deps = filter(p -> p.is_direct_dep, deps)
    pkgs = [x.name for x in direct_deps]
	if "NativeSVG" ∉ pkgs
		Pkg.add(url="https://github.com/BenLauwens/NativeSVG.jl.git")
	end
	using NativeSVG
	include("css.jl")
end

# ╔═╡ 0aa076fd-29a1-4863-ab3a-ccbcbf567045
md"# Numbers and Functions"

# ╔═╡ f45193a2-dd38-4b6d-a407-699861979f62
md"""## Rational Numbers

### Natural Numbers and Extensions

The axioms of Peano define the *natural numbers*, denoted by ``\mathbb N``. 

To close the set of numbers under the subtraction operation, the natural numbers are extended with the negative integers to form the set of *integers*, denoted by ``\mathbb Z``. 

To close the set of numbers under the division operation, numbers that can be expressed as an irreducible fraction ``\frac{m}{n}``, where ``m\in \mathbb Z`` and ``n\in\mathbb Z\setminus \{0, 1\}`` are added to the integers to form the set of *rational numbers*, denoted by ``\mathbb Q``.

This definition comes with the understanding that the two rational numbers ``\frac{m}{n}`` and ``\frac{a}{b}`` are equal whenever ``mb=na``.

### Algebraic Properties

The set of rational number is more than a set of fractions with integers for numerators and denominators. It also comes with the two binary operations of *addition* and *multiplication*.

!!! axiom "Algebraic properties"
	A set ``\mathbb F`` together with the binary operations of addition and multiplication form a *field* if ``\mathbb F`` contains two elements ``0`` and ``1``with ``0\ne1`` such that ``\forall a,b,c\in\mathbb F``:
	1. ``a+b=b+a`` and ``ab=ba`` (*commutativity*)
	2. ``a+(b+c)=(a+b)+c=a+b+c`` and ``a(bc)=(ab)c=abc`` (*associativity*)
	3. ``a+0=a`` and ``a\cdot1=a`` (*identity*)
	4. There exists ``-a\in\mathbb Q`` such that ``a+(-a)=0`` (*opposite*) and for ``a\ne 0`` there exists ``a^{-1}=\frac{1}{a}\in\mathbb Q`` such that ``a\cdot a^{-1}=1`` (*inverse*)
	5. ``a(b+c)=ab+bc`` (*distributivity*)

Notice that the rational numbers do satisfy the field axioms.

Following properties can be derived from the algebraic properties.

!!! theorem
	Let ``a,b,c\in\mathbb Q``.
	1. ``a+c=b+c\Rightarrow a=b``
	2. ``a\cdot 0=0``
	3. ``(-a)\cdot b=-ab``
	4. ``c\ne 0 \wedge ac=bc \Rightarrow a=b``
	6. ``ab=0 \Rightarrow a=0 \vee b=0``

!!! example
	Proof the second property.
	!!! proof
		Let ``a\in \mathbb Q``.

		Since ``0`` is the additive identity, ``0=0+0``. Then ``a\cdot 0=a\cdot(0+0)``. By the distributive property, ``a\cdot 0=a\cdot 0+a\cdot 0``. By adding ``-a\cdot 0`` to each side of this equality, one gets
		```math
		0=a\cdot 0-a\cdot 0=(a\cdot 0+a\cdot 0)-a\cdot 0=a\cdot 0+(a\cdot 0-a\cdot 0)=a\cdot 0+0=a\cdot 0\,\textrm .
		```
		
		Therefore, ``a\cdot 0 = 0``

!!! exercise
	Proof the other properties.

The associative property allows to write in an unambiguous way ``a+b+c`` and ``abc``. More generally, the sum of ``a_1,a_2,\dots,a_n\in \mathbb Q`` is unambiguously defined. To present this sum concisely, we use the *sigma notation*:

```math
\sum_{i=1}^na_i\equiv\begin{cases} 0&\textrm{if }n=0\\
a_1+a_2+\dots+a_n&\textrm{if }n\in\mathbb N\setminus\left\{0\right\}
\end{cases}\,.
```

We call the first case ``n=0`` the *empty sum*.

In a similar way we can define and represent the product of ``a_1,a_2,\dots,a_n\in \mathbb Q``:

```math
\prod_{i=1}^na_i\equiv\begin{cases} 1&\textrm{if }n=0\\
a_1\cdot a_2\cdot\dots\cdot a_n&\textrm{if }n\in\mathbb N\setminus\left\{0\right\}
\end{cases}\,.
```

We call the first case ``n=0`` the *empty product*.

If all factors of the product have the same value ``a\in \mathbb Q``, we use the *exponential notation*:

```math
\Pi_{i=1}^na\equiv a^n\,.
```

For ``a\in \mathbb Q\setminus\left\{0\right\}``, we can write

```math
\left(\frac{1}{a}\right)^n=\left(a^{-1}\right)^n=a^{-n}=\left(a^n\right)^{-1}=\frac{1}{a^n}
```

and we have the following property

```math
\forall m,n\in\mathbb Z:a^{m+n}=a^ma^n\textrm{ and }\left(a^m\right)^n=a^{mn}\,.
```

### Order Properties

Rational numbers are not only determined by the operations of addition and multiplication, they are also *ordered* in a way that is compatible with addition and multiplication. 

!!! axiom "Order properties"
	A field ``\mathbb F`` is an *ordered field* with total order relation ``\le`` if ``\forall a,b,c\in\mathbb Q:``
	1. ``a\le a`` (*reflectivity*)
	2. ``a\le b \vee b\le a`` (*totality*)
	3. ``a\le b\wedge b\le a\Rightarrow a=b`` (*antisymmetry*)
	4. ``a\le b\wedge b\le c\Rightarrow a\le c`` (*transitivity*)
	Moreover, addition and multiplication are compatible with the total order relation:
	1. ``a\le b\Rightarrow a+c\le b+c``
	2. ``a\le b\wedge 0\le c\Rightarrow ac\le bc``

Notice that the rational numbers do satisfy the ordered field axioms.

We say that ``a`` is *positive* if ``0\le a`` and *negative* if ``a\le 0``. The *strict order relation* ``a < b`` means that ``a\le b`` and ``a \ne b``.

Following properties can be derived from the order properties.

!!! theorem
	Let ``a,b,c\in \mathbb Q``. 
	1. ``a\le b\Rightarrow -b\le -a``
	2. ``a\le b \wedge c\le 0 \Rightarrow bc\le ac``
	3. ``0\le a\wedge 0\le b\Rightarrow 0 \le ab``
	4. ``0\le a^2``
	5. ``0<1``
	6. ``0<a\Rightarrow 0<a^{-1}``
	7. ``0<a<b\Rightarrow 0<b^{-1}<a^{-1}``

!!! example
	Proof the fifth property.
	!!! proof "Proof by contradiction"
		By the totality propery is ``0\le1 \vee 1\le0``. Suppose ``1\le0``.

		By the compatibility of the addition is ``0=1+(-1)\le0+(-1)=-1``.

		By the compatibility of the multiplication is ``0=0\cdot(-1)\le-1\cdot(-1)=1``.

		Because ``0\ne 1``, ``0\le1`` is in contradiction with ``1\le0``. We supposed wrongly that ``1\le0``. 
		
		Therefore, ``0\le 1`` and ``0\ne 1``, that is, ``0 < 1``.

!!! exercise
	Proof the other properties.

### Decimal Expansion

The rational numbers have a *decimal expansion* that is either:
1. terminating, that is, ending with an infinite string of zeros, eg. ``\frac{3}{4}=0.75000\ldots``, or
2. repeating, that is, ending with a string of digits that repeats over and over, eg. ``\frac{23}{11}=1.090909\ldots=2.\overline{09}``.

!!! example
	Show that ``1.\overline{32}`` and ``.3\overline{405}`` are rational numbers by expressing them as a quotient of two irreducible integers.

	1. Let ``x=1.323232\ldots``. Then ``x-1=0.323232\ldots`` and
	   ```math
	   100x=132.323232\ldots=132+0.323232\ldots= 132+x-1\,\textrm .
	   ```
	   Therefore, ``99x=131`` and ``x=\frac{131}{99}``.
	2. Let ``y=0.3405405405\ldots``. Then ``10y=3.405405405\ldots`` and ``10y-3=0.405405405\ldots``. Also,
	   ```math
	   10000y=3405,405405405\ldots=3405+10y-3\,\textrm .
	   ```
	   Therefore, ``9990y=3402`` and ``y=\frac{3402}{9990}=\frac{63}{185}``.

### Not all Numbers are Rational

Geometrically, we represent the integers as points on a horizontal line by defining a starting point (the number ``0``) and a unit distance (between two consecutive integers). The unit distance can be further subdivided to represent rational numbers such as ``\frac{1}{n}`` with ``n\in\mathbb{N}_0``. In this way we can uniquely represent each rational number on the *number line*.

Although the rational numbers have a rich structure, there are limitations. Not every point on the number line corresponds to a rational number, eg., we can indicate the number ``\sqrt 2`` using a simple geometric construction, based on the *Pythagorean theorem*, as a single point between the numbers ``1`` and ``2`` but it is not a rational number.
"""

# ╔═╡ 6ea467b8-8347-45e6-931d-e279878a6851
Drawing(width=640, height=120) do
	mid = trunc(Int64, 100)
	line(x1=0, y1=mid, x2=640, y2=mid, stroke="black")
	for n in 1:7
		line(x1=80n, y1=mid-5, x2=80n, y2=mid+5, stroke="black")
		text(x=(80n - (n < 4 ? 7 : 4)), y=mid+20, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
			str("$(n-4)")
		end
	end
	line(x1=320-9/4*80, y1=mid-5, x2=320-9/4*80, y2=mid+5, stroke="black")
	text(x=300-9/4*80, y=mid-10, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
		str("-9/4")
	end
	line(x1=320-3/2*80, y1=mid-5, x2=320-3/2*80, y2=mid+5, stroke="black")
	text(x=300-3/2*80, y=mid-10, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
		str("-3/2")
	end
	line(x1=320-18/5*80, y1=mid-5, x2=320-18/5*80, y2=mid+5, stroke="black")
	text(x=295-18/5*80, y=mid-10, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
		str("-18/5")
	end
	line(x1=320+7/3*80, y1=mid-5, x2=320+7/3*80, y2=mid+5, stroke="black")
	text(x=307+7/3*80, y=mid-10, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
		str("7/3")
	end
	line(x1=320, y1=mid, x2=400, y2=mid, stroke="blue", stroke_dasharray="3")
	text(x=360, y=mid-10, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600, fill="blue") do
		str("1")
	end
	line(x1=400, y1=mid, x2=400, y2=mid-80, stroke="blue", stroke_dasharray="3")
	text(x=385, y=65, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600, fill="blue") do
		str("1")
	end
	line(x1=320, y1=mid, x2=400, y2=mid-80, stroke="blue")
	text(x=345, y=60, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600, fill="blue", rotate=-45) do
		str("√2")
	end
	path(d="M 400 $(mid-80) A 127 127 0 0 1 $(320+80√2) 100", fill="none", stroke="blue")
	line(x1=320+80√2, y1=mid-5, x2=320+80√2, y2=mid+5, stroke="black")
	text(x=315+80√2, y=mid+20, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
		str("√2")
	end
	line(x1=320+80ℯ, y1=mid-5, x2=320+80ℯ, y2=mid+5, stroke="black")
	text(x=317+80ℯ, y=mid-10, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
		str("ℯ")
	end
	line(x1=320+80π, y1=mid-5, x2=320+80π, y2=mid+5, stroke="black")
	text(x=317+80π, y=mid-10, font_family="JuliaMono, monospace", font_size="0.85rem", font_weight=600) do
		str("π")
	end
	@info "The number line."
end

# ╔═╡ 266bb715-b661-4424-a923-a0dfbd312814
md"""!!! theorem
	``\sqrt 2 \notin \mathbb Q``.
	!!! proof "Proof by contradiction"
		Suppose ``\sqrt 2\in\mathbb Q``.

		Since ``\sqrt 2`` as a rational number can be represented by an irreducible fraction ``\frac{m}{n}``, we have ``\frac{m^2}{n^2}=(\sqrt 2)^2=2``, that is, ``m^2=2n^2``. Consequently, ``m^2`` is even and so is ``m`` (see previous lecture). Then ``m^2=(2k)^2=4k^2=2n^2`` or ``n^2=2k^2``, that is, ``n^2`` is even and so is ``n``.

		Both ``m`` and ``n`` are even contradicts that ``\frac{m}{n}`` is an irreducible fraction. We supposed wrongly that ``\sqrt 2\in\mathbb Q``.

		Therefore, ``\sqrt 2 \notin \mathbb Q``.

!!! exercise
	Proof ``\sqrt 3 \notin \mathbb Q``. What goes wrong if you try to proof ``\sqrt 4 \notin \mathbb Q``?

	Hint: If a prime number divides the square of an integer, it also divides the integer itself.
"""

# ╔═╡ 748c7b0c-135d-47bb-9764-7a7e8c7a96cf
md"""## Real Numbers

### Completeness

To express that there are no holes in the *real line*, that is, the line is *complete*, another axiom is needed.

!!! definition
	A number ``u`` of an ordered field ``\mathbb F`` is said to be an *upper bound* for a nonempty set ``S\subset\mathbb F`` if ``\forall x\in S: x\le u``.

	The number ``u^\star`` is called the *least upper bound* or *supremum* of ``S`` if ``u^\star`` is an upper bound for ``S`` and ``u^\star \le u`` for every upper bound ``u`` of ``S``. The supremum of ``S`` is denoted ``\sup (S)``.
	
	Similarly, ``l`` is a *lower bound* for ``S`` if ``\forall x\in S: l\le x``. The number ``l^\star`` is called the *greatest lower bound* or *infimum* of ``S`` if ``l^\star`` is a lower bound for ``S`` and ``l \le l^\star`` for every lower bound ``l`` of ``S``. The infimum of ``S`` is denoted ``\inf (S)``.

!!! example
	Let ``S=\left\{x=\frac{1}{n}\mid n\in\mathbb N\setminus\{0\}\right\}=\left\{1, \frac{1}{2},\frac{1}{3}, \ldots\right\}``. ``\sup(S)=1`` and ``\inf(S)=0``.

If a set has a maximim (minimum) then this maximum (minimum) is also the supremum (infimum). If this is not the case, the supremum (infimum), not belonging to the set, are the next-best thing. 

!!! axiom "Completeness axiom"
	A nonempty set of real number that has an upper bound must have a least upper bound.

	Equivalently, a nonempty set of real numbers having a lower bound must have a greatest lower bound.

We stress that this is an axiom to be assumed without proof. It cannot be deduced from the algebraic and order properties. These properties are shared by the rational numbers, a set that is not complete.

The completeness axiom has massive consequences. The first is the Archimedean principle.

!!! theorem "Archimedean Principle"
	If ``r\in\mathbb R``, then there exists ``n\in\mathbb N`` such that ``r<n`` or
	```math
	r\in\mathbb R\Rightarrow\exists n\in\mathbb N:r<n\,.
	```
	!!! proof "Proof by contradiction"
		Suppose that there is an ``r\in \mathbb R`` such that ``\forall n\in\mathbb N:r>n``.

		Then the set ``\mathbb N`` is a nonempty subset of ``\mathbb R`` with an upper bound, so by the completeness axiom, ``\mathbb N`` has a least upper bound ``M``.

		Then ``M-1<M``, so ``M-1`` is not an upper bound for ``\mathbb N``.

		Thus, there is a ``k\in\mathbb N`` with the property that ``k > M-1``.

		But then ``k+1`` is also in ``\mathbb N``, yet ``k+1>(M-1)+1=M`` where ``M`` is an upper bound for ``\mathbb N``.

		This is a contradiction since no element of a set can be greater than an upper bound for that set.

		Therefore, the assumption that ``r>n`` for every ``n\in\mathbb N`` must be false, and for every ``r\in\mathbb R`` there must be at least one ``n\in\mathbb N`` with ``n>r``.




### Absolute Values

### Intervals

### Bisection Method

"""

# ╔═╡ 9f3a8057-901f-461e-9b3c-b0564215f2aa
md"""## Real Functions

"""

# ╔═╡ Cell order:
# ╟─bdd4c99e-0276-11ef-1fe1-4b6392448c9f
# ╟─0aa076fd-29a1-4863-ab3a-ccbcbf567045
# ╟─f45193a2-dd38-4b6d-a407-699861979f62
# ╟─6ea467b8-8347-45e6-931d-e279878a6851
# ╟─266bb715-b661-4424-a923-a0dfbd312814
# ╟─748c7b0c-135d-47bb-9764-7a7e8c7a96cf
# ╟─9f3a8057-901f-461e-9b3c-b0564215f2aa
