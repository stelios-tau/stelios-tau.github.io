---
layout: page
title: Higher-order Abstract GSOS
description: An overview of Higher-order Abstract GSOS, our categorical framework of higher-order programming languages.
img:
importance: 1
category: work
related_publications: true
---

## Overview

Higher-Order Mathematical Operational Semantics*, or *Higher-Order Abstract GSOS* (HO-GSOS),is a categorical framework of higher-order languages. The development of HO-GSOS and its theory takes place mainly in FAU Erlangen, the key contributors being (apart from myself) Sergey Goncharov, Henning Urbat, Stefan Milius and Lutz Schröder.

## On frameworks

The "formal reasoning" branch of programming language theory often features works fitting a certain trope: an operational semantics is given, a certain question pertaining to program behavior is posed and said question is answered via a long, laborious proof. Sometimes the question is rather specific, other times it is an instance of a general problem; in the latter case, the given operational semantics serves as a "representative" language, and the argumentation is presented, again, as an instance of a vaguely generic method that one can hope to apply to other instances. There are other variations of this trope, e.g. there can be two or more languages instead of one, but the idea remains the same.

Up to this point, formal reasoning for PL has resisted efforts towards systematically organizing reasoning methods under a common mathematical roof. I find this problematic, not only because I prefer elegant and unifying theories to ad-hoc methods, but mainly because it exposes formal proofs to expected scaling issues: i) one has to constantly reinvent the wheel, ii) the proofs are brittle w.r.t. to the parameters of the problem and iii) proofs scale badly w.r.t. the size of the language, making them extremely hard to apply to real-world languages.

The above outlines the key features of a "framework for programming languages" (borrowing ideas from the intro of Peio Borthelle, Tom Hirschowitz and Ambroise Lafont [1]; Tom is in fact working towards systematizing formal reasoning, you should check his work!):

a. It should be based on a well-defined, mathematical notion of a programming language.
b. It should provide abstract reasoning principles and methods (such as
  abstract versions of Howe's method and logical relations), without the need to
  set up complex machinery.
c. In terms of usability and efficiency, the above should be broad, generic and scalable, being able to model common programming paradigms and real-world programming languages.

Back in 1997, Turi and Plotkin [2] introduced *Abstract GSOS*, a theory that could legitimately claim a. and, to a limited degree, b. and c. of the above points.

## Background

In the original abstract GSOS, (first-order) operational semantics are modelled by GSOS laws, i.e. natural transformations of the form

$$\Sigma(X \times BX) \to B\Sigma^{\star}X$$,

where $$\Sigma, B : \mathbb{C} \to \mathbb{C}$$ are endofunctors in some distributive category $$\mathbb{C}$$. Functor $$\Sigma$$ can be understood as an algebraic signature in the standard way and $$B X$$ as the type of "structured successors of programs from X". This framework was significant and powerful for two main reasons:

- Turi and Plotkin made the beautiful observation that the standard (i.e. concrete, first-order) GSOS specifications over a signature $$\Sigma : \mathbf{Set} \to \mathbf{Set}$$ are in a *bijective* correspondence with GSOS laws of $$\Sigma$$ over $$BX = (\mathcal{P}X)^{A}$$ for some set $$A$$. More generally, this mathematical formalization of operational semantics as natural transformations is not just conveniently rigorous, it is also very precise and natural. This enabled people to meaningfully study systems at a high level of abstraction.

- Naturality captures the intuitive fact that the behavior of complex terms is determined only by the behavior of their subterms, and not the subterms' internal structure. Formally, naturality is in fact the critical cog ensuring that bisimilarity is compatible with the operations of the language (i.e. bisimilarity is a congruence), a key well-behavedness property.

The above facts drew me to this framework, which I studied quite intently, eventually producing relevant work on secure compilers and weak bisimilarity with Christian Williams  among others.

However, by far the biggest problem with abstract GSOS was its inadequacy to model higher-order languages like the lambda calculus. At some point, Christian Williams  and I tried to do just that, to extend the framework, to fit the lambda calculus to abstract GSOS, but we (like others before us) failed. However, the Erlangen group gave it another go in 2022 and a few good ideas later, HO-GSOS was born.

Briefly, under the HO-GSOS framework, a higher-order operational semantics now consists of i) an endofunctor $$\Sigma : \mathbb{C} \to \mathbb{C}$$, modelling syntax as before, ii) a *bifunctor* $$B : \mathbb{C}^{\mathrm{op}} \times \mathbb{C} \to \mathbb{C}$$, where $$B(X,Y)$$ represents the "structured successors of programs in $$Y$$, potentially accepting programs in $$X$$ as inputs", and iii) a family of maps


$$\Sigma(X \times B(X,Y)) \to B(X, \Sigma^{\star}(X + Y))~~(2)$$,

*natural* in $$Y$$ and *dinatural* in $$X$$. Generalizing from natural to dinatural transformations is a rather standard idea. The challenging part was showing that (2) faithfully models actual higher-order systems (doing so for the $$\lambda$$-calculus was one of the highlights of [3]) and that bisimilarity is still a congruence. These facts meant that the fundamental advantages of abstract GSOS do indeed carry over to our higher-order setting; they also served as a green light for further research, to find out how powerful HO-GSOS really is.

[1] A Cellular Howe Theorem\
[2] Towards a Mathematical Operational Semantics\
[3] Towards a Higher-Order Mathematical Operational Semantics, POPL 2023\
[4] Weak Similarity in Higher-Order Mathematical Operational Semantics, LICS 2023\
[5] Logical Predicates in Higher-Order Mathematical Operational Semantics, FoSSaCS 2024\
[6] Bialgebraic Reasoning on Higher-Order Program Equivalence, LICS 2024


