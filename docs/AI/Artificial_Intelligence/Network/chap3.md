# Chap3 Mathematical basics of fuzzy logic

!!! abstract
    - Fuzzy information and fuzzy sets
    - Operations with fuzzy sets
    - Fuzzy relations
    - Linguistic variables

## Basics of fuzzy logic

### Fuzzy information and Fuzzy sets

Given μ is a fuzzy set in G, then 
{x| x∈G,μ(x)>0} is called support of fuzzy set μ
{x| x∈G,μ(x)=1} is called kernel of fuzzy set μ

fuzzy-similar: have the same kernal
strongly fuzzy-similar: have the same kernal and the same support

And link(intersection)

$$
\mu_1 \cap \mu_2:G \rightarrow[0,1], with (\mu_1 \cap \mu_2)(x) = MIN\{\mu_1 (x) + \mu_2(x)\}
$$

Or link(union)

$$
\mu_1 \cup \mu_2 : G\rightarrow[0,1] mit (\mu_1 \cap \mu_2)(x) = MAX \{\mu_1 (x), \mu_2(x)\}
$$

Special operators: Modifiers
- Concentration operator CON
- Dilatation operator DIL

fuzzy relations
$$
R: G_1 \times G_2 \rightarrow [0,1]
$$

$$
(\mu_1 \times \mu_2)(x,y)= MIN\{ \mu_1(x), \mu_2(y)\}, with (x,y) \in G_1 \times G_2
$$

$$
\mu_1 \times \mu_2 =\mu_1^T \circ \mu_2
$$

product calculation is replaced by the MIN opertor and the addition is replaced by the MAX operatior

$$
\mu_{R \circ S}(x, z)= MAX_{y \in G_2} {MIN \{\mu_R(x,y), \mu_S(y,z)}\}, with (x,z) \in G_1 \times G_3
$$

fuzzy inference

$$
\mu_2(y) = MAX_{x \in G_1} \{ MIN{\mu_1 (x), \mu_R(x,y)}\} = \mu_1 \circ R, y\in G_2
$$

inference with several rules

1. Construct implication relation for each rule i

$$
\mu_{R_i}(x,y) = I(\mu_{A_i}(x), \mu_{B_i}(y))
$$

2. Aggregate relations $R_i$ into one

$$
\mu_R(x,y) = aggr(\mu_{R_i}(x,y))
$$

The aggr operator is the minimum for implications and the maximum for junctions

3. Use relational composition to derive B' from A'

$$
B^\prime = A^\prime \circ R
$$