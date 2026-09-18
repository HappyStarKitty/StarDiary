# Chap1 概率论的基本概念

!!! formula "概率的加法公式"
    $$
    P(A \cup B)=P(A)+P(B)-P(AB)
    $$

    $$
    P(A \cup B \cup C)=P(A)+P(B)+P(C)-P(AB)-P(AC)-P(BC)+P(ABC)
    $$

    $$
    P( \cup_{j=1}^{n} A_j)= \sum_{j=1}^{n} P(A_j) -\sum_{i<j}P(A_i A_j) + \sum_{i<j<k} P(A_i A_j A_k)-...+(-1)^{n-1}P(A_iA_2...A_n), \quad n \ge 1 
    $$

!!! formula "全概率公式"
    $$
    P(A)=\sum_{j=1}^{n}P(B_j)P(A|B_j)
    $$

!!! formula "贝叶斯公式"
    $$
    P(B_k|A)=\frac{P(B_kA)}{P(A)}=\frac{P(B_k)P(A|B_k)}{\sum_{j=1}^n P(B_j)P(A|B_j)}
    $$