---
icon: fontawesome/solid/square-root-variable
---

#Príklady

??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \frac{\cos^3 x}{3+\sin x}\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \frac{\cos^3 x}{3+\sin x}\,\mathrm{d}x
    = \int \frac{\cos^2 x\cdot\cos x}{3+\sin x}\,\mathrm{d}x
    = \int \frac{1-\sin^2 x}{3+\sin x}\cdot\cos x\,\mathrm{d}x = \\[12pt]
    &= \int \frac{1-t^2}{3+t}\,\mathrm{d}t
    = \int \frac{1}{3+t}\,\mathrm{d}t
    + \int \frac{-t^2}{3+t}\,\mathrm{d}t = \\[12pt]
    &= \ln|3+t|-\frac{(3+t)^2}{2}
    +6(3+t)-9\ln|3+t|+C = \\[12pt]
    &= \boxed{
    \ln|3+\sin x|-\frac{(3+\sin x)^2}{2}
    +6(3+\sin x)-9\ln|3+\sin x|+C
    }.
    \end{aligned}
    $$

    **Substitúcia**

    $$
    \begin{aligned}
    &t = \sin x, \\[6pt]
    &\mathrm{d}t = \cos x\,\mathrm{d}x.
    \end{aligned}
    $$

    **Pomocné výpočty**

    **1. Prvý integrál**

    $$
    \begin{aligned}
    &\int \frac{1}{3+t}\,\mathrm{d}t = \ln|3+t|+C.
    \end{aligned}
    $$

    **2. Druhý integrál**

    $$
    \begin{aligned}
    &\int \frac{-t^2}{3+t}\,\mathrm{d}t
    = \int \frac{-(u-3)^2}{u}\,\mathrm{d}u
    = -\int \frac{u^2-6u+9}{u}\,\mathrm{d}u = \\[12pt]
    &= -\left[
    \int \frac{u^2-6u}{u}\,\mathrm{d}u
    +9\int \frac{1}{u}\,\mathrm{d}u
    \right]
    = -\left[
    \int \frac{u(u-6)}{u}\,\mathrm{d}u
    +9\int \frac{1}{u}\,\mathrm{d}u
    \right] = \\[12pt]
    &= -\left[
    \int (u-6)\,\mathrm{d}u
    +9\int \frac{1}{u}\,\mathrm{d}u
    \right]
    = -\left[
    \frac{u^2}{2}-6u+9\ln|u|+C
    \right] = \\[12pt]
    &= -\frac{u^2}{2}+6u-9\ln|u|-C
    = -\frac{(3+t)^2}{2}+6(3+t)-9\ln|3+t|-C.
    \end{aligned}
    $$

    **Substitúcia v druhom pomocnom výpočte**

    $$
    \begin{aligned}
    &u = 3+t, \\[6pt]
    &\mathrm{d}u = \mathrm{d}t, \\[6pt]
    &t = u-3.
    \end{aligned}
    $$

??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \frac{1}{\sin x}\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \frac{1}{\sin x}\,\mathrm{d}x
    = \int \frac{1}{\sin x}\cdot\frac{\sin x}{\sin x}\,\mathrm{d}x
    = \int \frac{\sin x}{\sin^2 x}\,\mathrm{d}x = \\[12pt]
    &= -\int \frac{-\sin x}{1-\cos^2 x}\,\mathrm{d}x
    = -\int \frac{1}{1-t^2}\,\mathrm{d}t
    = -\int \frac{1}{(1+t)(1-t)}\,\mathrm{d}t = \\[12pt]
    &= -\int \frac{\frac12}{1+t}\,\mathrm{d}t
    -\int \frac{\frac12}{1-t}\,\mathrm{d}t
    = -\int \frac{1}{2(1+t)}\,\mathrm{d}t
    -\int \frac{1}{2(1-t)}\,\mathrm{d}t = \\[12pt]
    &= -\frac12\int \frac{1}{1+t}\,\mathrm{d}t
    -\frac12\int \frac{1}{1-t}\,\mathrm{d}t
    = -\frac12\ln|1+t|+\frac12\ln|1-t|+C = \\[12pt]
    &= \boxed{-\frac12\ln|1+\cos x|+\frac12\ln|1-\cos x|+C}.
    \end{aligned}
    $$

    **Substitúcia**

    $$
    \begin{aligned}
    &t=\cos x, \\[6pt]
    &\mathrm{d}t=-\sin x\,\mathrm{d}x.
    \end{aligned}
    $$

    **Pomocné výpočty**

    **Rozklad na parciálne zlomky**

    $$
    \begin{aligned}
    &\frac{1}{(1+t)(1-t)}
    = \frac{A}{1-t}+\frac{B}{1+t}, \\[12pt]
    &1=A(1+t)+B(1-t)
    =A+At+B-Bt.
    \end{aligned}
    $$

    Porovnaním koeficientov dostávame:

    $$
    \begin{aligned}
    &0=A-B, \\[12pt]
    &1=A+B.
    \end{aligned}
    $$

    Z druhej rovnice vyjadríme $A$ a dosadíme do prvej:

    $$
    \begin{aligned}
    &A=1-B, \\[12pt]
    &0=1-B-B=1-2B, \\[12pt]
    &-1=-2B
    \quad\Longrightarrow\quad
    1=2B
    \quad\Longrightarrow\quad
    \boxed{B=\frac12}.
    \end{aligned}
    $$

    Dopočítame $A$:

    $$
    \begin{aligned}
    &1=A+\frac12
    \quad\Longrightarrow\quad
    A=1-\frac12=\boxed{\frac12}.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \sin^3 x\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \sin^3 x\,\mathrm{d}x
    = \int \sin^2 x\cdot\sin x\,\mathrm{d}x
    = -\int (1-\cos^2 x)(-\sin x)\,\mathrm{d}x = \\[12pt]
    &= -\int (1-t^2)\,\mathrm{d}t
    = -t+\frac{t^3}{3}+C
    = \boxed{-\cos x+\frac{\cos^3 x}{3}+C}.
    \end{aligned}
    $$

    **Substitúcia**

    $$
    \begin{aligned}
    &t=\cos x, \\[6pt]
    &\mathrm{d}t=-\sin x\,\mathrm{d}x.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \frac{\sin 2x}{\sin^2 x+2\cos^2 x}\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \frac{\sin 2x}{\sin^2 x+2\cos^2 x}\,\mathrm{d}x
    = \int \frac{2\sin x\cos x}{(1-\cos^2 x)+2\cos^2 x}\,\mathrm{d}x = \\[12pt]
    &= -\int \frac{2t}{(1-t^2)+2t^2}\,\mathrm{d}t
    = -\int \frac{2t}{1+t^2}\,\mathrm{d}t
    = -\ln|1+t^2|+C = \\[12pt]
    &= \boxed{-\ln|1+\cos^2 x|+C}.
    \end{aligned}
    $$

    **Substitúcia**

    $$
    \begin{aligned}
    &t=\cos x, \\[6pt]
    &\mathrm{d}t=-\sin x\,\mathrm{d}x.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \sin^2 x\cos^2 x\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \sin^2 x\cos^2 x\,\mathrm{d}x
    = \int \frac{1-\cos 2x}{2}\cdot\frac{1+\cos 2x}{2}\,\mathrm{d}x = \\[12pt]
    &= \int \frac{(1-\cos 2x)(1+\cos 2x)}{4}\,\mathrm{d}x
    = \frac14\int (1-\cos^2 2x)\,\mathrm{d}x = \\[12pt]
    &= \frac14\int \mathrm{d}x-\frac14\int \cos^2 2x\,\mathrm{d}x
    = \frac14\int \mathrm{d}x-\frac14\int \frac{1+\cos 4x}{2}\,\mathrm{d}x = \\[12pt]
    &= \frac14\int \mathrm{d}x-\frac14\cdot\frac12\int (1+\cos 4x)\,\mathrm{d}x = \\[12pt]
    &= \frac14\int \mathrm{d}x-\frac18\int \mathrm{d}x
    -\frac18\int \cos 4x\,\mathrm{d}x = \\[12pt]
    &= \frac14\int \mathrm{d}x-\frac18\int \mathrm{d}x
    -\frac18\int \cos t\,\frac{\mathrm{d}t}{4}
    = \frac14\int \mathrm{d}x-\frac18\int \mathrm{d}x
    -\frac1{32}\int \cos t\,\mathrm{d}t = \\[12pt]
    &= \frac{x}{4}-\frac{x}{8}-\frac{\sin t}{32}+C
    = \boxed{\frac{x}{4}-\frac{x}{8}-\frac{\sin 4x}{32}+C}.
    \end{aligned}
    $$

    **Substitúcia**

    $$
    \begin{aligned}
    &t=4x, \\[6pt]
    &\mathrm{d}t=4\,\mathrm{d}x, \\[6pt]
    &\mathrm{d}x=\frac{\mathrm{d}t}{4}.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \sin^4 x\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \sin^4 x\,\mathrm{d}x
    = \int \sin^2 x\cdot\sin^2 x\,\mathrm{d}x
    = \int \frac{1-\cos 2x}{2}\cdot\frac{1-\cos 2x}{2}\,\mathrm{d}x = \\[12pt]
    &= \int \frac{1-\cos 2x-\cos 2x+\cos^2 2x}{4}\,\mathrm{d}x
    = \int \frac{1-2\cos 2x+\cos^2 2x}{4}\,\mathrm{d}x = \\[12pt]
    &= \int \frac14\,\mathrm{d}x
    -\int \frac{2\cos 2x}{4}\,\mathrm{d}x
    +\int \frac{\cos^2 2x}{4}\,\mathrm{d}x = \\[12pt]
    &= \boxed{\frac{x}{4}-\frac{\sin 2x}{4}+\frac{x}{8}+\frac{\sin 4x}{32}+C}.
    \end{aligned}
    $$

    **Pomocné výpočty**

    **1. Prvý integrál**

    $$
    \begin{aligned}
    &\int \frac14\,\mathrm{d}x
    = \frac14\int \mathrm{d}x
    = \frac14x+C
    = \frac{x}{4}+C.
    \end{aligned}
    $$

    **2. Druhý integrál**

    $$
    \begin{aligned}
    &-\int \frac{2\cos 2x}{4}\,\mathrm{d}x
    = -\frac24\int \cos 2x\,\mathrm{d}x
    = -\frac24\int \cos t\,\frac{\mathrm{d}t}{2} = \\[12pt]
    &= -\frac28\int \cos t\,\mathrm{d}t
    = -\frac14\sin t+C
    = -\frac{\sin 2x}{4}+C.
    \end{aligned}
    $$

    **Substitúcia v druhom pomocnom výpočte**

    $$
    \begin{aligned}
    &t=2x, \\[6pt]
    &\mathrm{d}t=2\,\mathrm{d}x, \\[6pt]
    &\mathrm{d}x=\frac{\mathrm{d}t}{2}.
    \end{aligned}
    $$

    **3. Tretí integrál**

    $$
    \begin{aligned}
    &\int \frac{\cos^2 2x}{4}\,\mathrm{d}x
    = \frac14\int \cos^2 2x\,\mathrm{d}x
    = \frac14\int \frac{1+\cos 4x}{2}\,\mathrm{d}x = \\[12pt]
    &= \frac14\int \frac12\,\mathrm{d}x
    +\frac14\int \frac{\cos 4x}{2}\,\mathrm{d}x
    = \frac18\int \mathrm{d}x+\frac18\int \cos 4x\,\mathrm{d}x = \\[12pt]
    &= \frac18\int \mathrm{d}x+\frac18\int \cos t\,\frac{\mathrm{d}t}{4}
    = \frac18\int \mathrm{d}x+\frac1{32}\int \cos t\,\mathrm{d}t = \\[12pt]
    &= \frac18x+\frac1{32}\sin t+C
    = \frac{x}{8}+\frac{\sin 4x}{32}+C.
    \end{aligned}
    $$

    **Substitúcia v treťom pomocnom výpočte**

    $$
    \begin{aligned}
    &t=4x, \\[6pt]
    &\mathrm{d}t=4\,\mathrm{d}x, \\[6pt]
    &\mathrm{d}x=\frac{\mathrm{d}t}{4}.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \frac{\operatorname{tg}x}{\operatorname{tg}x+2}\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \frac{\operatorname{tg}x}{\operatorname{tg}x+2}\,\mathrm{d}x
    = \int \frac{t}{t+2}\cdot\frac{1}{1+t^2}\,\mathrm{d}t
    = \int \frac{t}{(t^2+1)(t+2)}\,\mathrm{d}t = \\[12pt]
    &= \int \frac{-\frac25}{t+2}\,\mathrm{d}t
    +\int \frac{\frac25t+\frac15}{t^2+1}\,\mathrm{d}t = \\[12pt]
    &= -\frac25\ln|t+2|+\frac15\ln|t^2+1|
    +\frac15\operatorname{arctg}t+C = \\[12pt]
    &= \boxed{
    -\frac25\ln|\operatorname{tg}x+2|
    +\frac15\ln|\operatorname{tg}^2x+1|
    +\frac15\operatorname{arctg}(\operatorname{tg}x)+C
    }.
    \end{aligned}
    $$

    **Substitúcia**

    $$
    \begin{aligned}
    &t=\operatorname{tg}x, \\[6pt]
    &\mathrm{d}t=\frac{1}{\cos^2 x}\,\mathrm{d}x, \\[6pt]
    &\operatorname{arctg}t=\operatorname{arctg}(\operatorname{tg}x), \\[6pt]
    &\mathrm{d}x=\frac{1}{1+t^2}\,\mathrm{d}t.
    \end{aligned}
    $$

    **Pomocné výpočty**

    **1. Rozklad na parciálne zlomky**

    $$
    \begin{aligned}
    &\frac{t}{(t^2+1)(t+2)}
    = \frac{A}{t+2}+\frac{Bt+C}{t^2+1}, \\[12pt]
    &t=A(t^2+1)+(Bt+C)(t+2)
    =At^2+A+Bt^2+2Bt+Ct+2C.
    \end{aligned}
    $$

    Porovnaním koeficientov dostávame:

    $$
    \begin{aligned}
    &0=A+B, \\[12pt]
    &1=2B+C, \\[12pt]
    &0=A+2C.
    \end{aligned}
    $$

    Prvú rovnicu vynásobíme $-1$ a pripočítame k tretej:

    $$
    \begin{aligned}
    &0=-A-B, \\[12pt]
    &0=A+2C, \\[12pt]
    &0=-B+2C
    \quad\Longrightarrow\quad
    -B=-2C
    \quad\Longrightarrow\quad
    B=2C.
    \end{aligned}
    $$

    Dosadíme do druhej rovnice:

    $$
    \begin{aligned}
    &1=2B+C=2\cdot2C+C=4C+C=5C, \\[12pt]
    &\boxed{C=\frac15},
    \qquad
    B=2\cdot\frac15=\boxed{\frac25}.
    \end{aligned}
    $$

    Z prvej rovnice dopočítame $A$:

    $$
    \begin{aligned}
    &0=A+B=A+\frac25
    \quad\Longrightarrow\quad
    \boxed{A=-\frac25}.
    \end{aligned}
    $$

    **2. Prvý integrál**

    $$
    \begin{aligned}
    &\int \frac{-\frac25}{t+2}\,\mathrm{d}t
    = \int \frac{-2}{5(t+2)}\,\mathrm{d}t
    = -\frac25\int \frac{1}{t+2}\,\mathrm{d}t
    = -\frac25\ln|t+2|+C.
    \end{aligned}
    $$

    **3. Druhý integrál**

    $$
    \begin{aligned}
    &\int \frac{\frac25t+\frac15}{t^2+1}\,\mathrm{d}t
    = \int \frac{\frac{2t+1}{5}}{t^2+1}\,\mathrm{d}t
    = \int \frac{2t+1}{5(t^2+1)}\,\mathrm{d}t = \\[12pt]
    &= \frac15\int \frac{2t+1}{t^2+1}\,\mathrm{d}t
    = \frac15\int \frac{2t}{t^2+1}\,\mathrm{d}t
    +\frac15\int \frac{1}{t^2+1}\,\mathrm{d}t = \\[12pt]
    &= \frac15\ln|t^2+1|
    +\frac15\cdot\frac11\operatorname{arctg}\frac{t}{1}+C
    = \frac15\ln|t^2+1|+\frac15\operatorname{arctg}t+C.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \operatorname{cotg}^2x\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \operatorname{cotg}^2x\,\mathrm{d}x
    = \int t^2\cdot\frac{-1}{1+t^2}\,\mathrm{d}t
    = \int \frac{-t^2}{1+t^2}\,\mathrm{d}t
    = -\int \frac{t^2}{1+t^2}\,\mathrm{d}t = \\[12pt]
    &= -\int \left(1-\frac{1}{t^2+1}\right)\,\mathrm{d}t
    = -\int \mathrm{d}t+\int \frac{1}{t^2+1}\,\mathrm{d}t = \\[12pt]
    &= -t+\frac11\operatorname{arctg}\frac{t}{1}+C
    = \boxed{-\operatorname{cotg}x+\operatorname{arctg}(\operatorname{cotg}x)+C}.
    \end{aligned}
    $$

    **Substitúcia**

    $$
    \begin{aligned}
    &t=\operatorname{cotg}x, \\[6pt]
    &\operatorname{arccotg}t=\operatorname{arccotg}(\operatorname{cotg}x), \\[6pt]
    &\mathrm{d}x=-\frac{1}{1+t^2}\,\mathrm{d}t.
    \end{aligned}
    $$

    **Pomocný výpočet**

    **Delenie polynómov**

    $$
    \begin{aligned}
    &\frac{t^2}{1+t^2}
    = \frac{(1+t^2)-1}{1+t^2}
    = 1-\frac{1}{1+t^2}
    = 1-\frac{1}{t^2+1}.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \sin\frac{x}{4}\cos\frac{3x}{4}\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \sin\frac{x}{4}\cos\frac{3x}{4}\,\mathrm{d}x
    = \int \frac12\left[
    \sin\left(\frac{x}{4}-\frac{3x}{4}\right)
    +\sin\left(\frac{x}{4}+\frac{3x}{4}\right)
    \right]\,\mathrm{d}x = \\[12pt]
    &= \int \frac12\left[
    \sin\left(-\frac{2x}{4}\right)+\sin\frac{4x}{4}
    \right]\,\mathrm{d}x
    = \frac12\int \sin\left(-\frac{x}{2}\right)\,\mathrm{d}x
    +\frac12\int \sin x\,\mathrm{d}x = \\[12pt]
    &= \boxed{\cos\frac{x}{2}-\frac12\cos x+C}.
    \end{aligned}
    $$

    **Pomocné výpočty**

    **1. Prvý integrál**

    $$
    \begin{aligned}
    &\frac12\int \sin\left(-\frac{x}{2}\right)\,\mathrm{d}x
    = \frac12\int \sin t\cdot(-2)\,\mathrm{d}t
    = \frac12\cdot2\int (-\sin t)\,\mathrm{d}t = \\[12pt]
    &= \frac22\cos t+C
    = \cos\left(-\frac{x}{2}\right)+C
    = \cos\frac{x}{2}+C.
    \end{aligned}
    $$

    **Substitúcia v prvom pomocnom výpočte**

    $$
    \begin{aligned}
    &t=-\frac{x}{2}, \\[6pt]
    &\mathrm{d}t=-\frac12\,\mathrm{d}x, \\[6pt]
    &\mathrm{d}x=-2\,\mathrm{d}t.
    \end{aligned}
    $$

    **2. Druhý integrál**

    $$
    \begin{aligned}
    &\frac12\int \sin x\,\mathrm{d}x=-\frac12\cos x+C.
    \end{aligned}
    $$


??? question priklad "<span class='cislo-prikladu'></span>Vypočítajte $\displaystyle \int \cos 3x\cos 4x\,\mathrm{d}x$."

    **Výpočet**

    $$
    \begin{aligned}
    &\int \cos 3x\cos 4x\,\mathrm{d}x
    = \int \frac12\left[\cos(3x-4x)+\cos(3x+4x)\right]\,\mathrm{d}x = \\[12pt]
    &= \int \frac12\cos(-x)\,\mathrm{d}x
    +\int \frac12\cos 7x\,\mathrm{d}x
    = \boxed{\frac12\sin x+\frac1{14}\sin 7x+C}.
    \end{aligned}
    $$

    **Pomocné výpočty**

    **1. Prvý integrál**

    $$
    \begin{aligned}
    &\int \frac12\cos(-x)\,\mathrm{d}x
    = \frac12\int \cos x\,\mathrm{d}x
    = \frac12\sin x+C.
    \end{aligned}
    $$

    **2. Druhý integrál**

    $$
    \begin{aligned}
    &\int \frac12\cos 7x\,\mathrm{d}x
    = \frac12\int \cos t\,\frac{\mathrm{d}t}{7}
    = \frac1{14}\int \cos t\,\mathrm{d}t
    = \frac1{14}\sin t+C
    = \frac1{14}\sin 7x+C.
    \end{aligned}
    $$

    **Substitúcia v druhom pomocnom výpočte**

    $$
    \begin{aligned}
    &t=7x, \\[6pt]
    &\mathrm{d}t=7\,\mathrm{d}x, \\[6pt]
    &\mathrm{d}x=\frac{\mathrm{d}t}{7}.
    \end{aligned}
    $$