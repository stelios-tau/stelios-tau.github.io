---
layout: page
title: Higher-order Abstract GSOS
description: A categorical framework of higher-order programming languages.
img: assets/img/mindmap.svg
importance: 1
category: work
related_publications: true
custom_bib: mainBiblio
---

## Summary

*Higher-order Abstract GSOS* (HO-GSOS), also known as *Higher-order Mathematical Operational Semantics*, is a novel categorical framework to develop, implement and study the properties of higher-order programming languages.

Our framework extends the original, first-order counterpart of (first-order) Abstract GSOS introduced by Turi and Plotkin in their seminal 1997 paper *Towards a Mathematical Operational Semantics* {% cite turi97 --file mainBiblio %}. In it, Turi and Plotkin present a conceptual realization of operational semantics as certain kinds of distributive laws (natural transformations) in a suitable category, in effect giving programming
languages a generic, mathematical definition. There two main advantages
attributed to Abstract GSOS: first, distributive laws are especially precise when it comes to the modelling of certain classes of first-order systems such as (first-order) process calculi. Second, bisimilarity for languages expressed in Abstract GSOS is automatically a congruence, a fundamental well-behavedness property that is typically hard to prove.

By far, the most crucial limitation of Abstract GSOS was its inability to model higher-order systems such as the $$\lambda$$-calculus. In early 2023 {% cite gmstu23 %}, a number of researchers from the [Theoretical Computer Science group](https://www8.cs.fau.de/) at FAU Erlangen-Nürnberg, which included myself, managed to finally extend Abstract GSOS to the higher-order setting, thus initiating the research programme on Higher-order Abstract GSOS.


### Publications on HO-GSOS {#hopubs}

- *Abstract Operational Methods for Call-by-Push-Value*, **POPL'25** {% cite gtu25_arxiv --file papers%}
- *Bialgebraic Reasoning on Higher-Order Program Equivalence*, **LICS'24** {% cite gmtu24lics %}
- *Logical Predicates in Higher-Order Mathematical Operational Semantics*, **FoSSaCS'24** {% cite gmstu24 %}
- *Weak Similarity in Higher-Order Mathematical Operational Semantics*, **LICS'23** {% cite UrbatTsampasEtAl23 %}
- *Towards a Higher-Order Mathematical Operational Semantics*, **POPL'23** {% cite gmstu23 %}

## Project Outline

Since the beginning of the HO-GSOS project in 2023 with its intruduction in Gocharov et al. {% cite gmstu23 %}, there has been important [progress](#hopubs) in a variety of fronts, such as implementing Logical Relations and Howe's method ({% cite gmtu24lics gmstu24 UrbatTsampasEtAl23%}). However, the vast majority of the work is ahead of us. We can divide this future work, and by extension the future of HO-GSOS, in four main categories:

- Programming paradigms, i.e. supporting the various diverse *classes* of languages.
- Reasoning methodologies, i.e. developing more methods to reason about program correctness.
- Secure compilation, i.e. developing a theory on secure/verified compilation.
- Mechanization/implementation, i.e. developing verification tools based on HO-GSOS.

The following diagram provides an overview of the completed work and our future plans on HO-HSOS.

{% include figure.liquid loading="eager" path="assets/img/mindmap.svg" title="example image" class="img-fluid rounded z-depth-1" %}
<div class="caption">
    Overview of the Higher-order Abstract GSOS project.
</div>


