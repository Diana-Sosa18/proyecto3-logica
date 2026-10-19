# Persona 2

## 2. Representación de proposiciones y conectivos en Lean

### 2.1 Proposiciones en Lean

En lógica, una proposición es un enunciado que puede ser verdadero o falso. Por ejemplo, «el programa compila» y «el programa se ejecuta» son proposiciones. Podemos representarlas con las letras p y q para trabajar con su estructura lógica sin depender de un ejemplo específico.

En Lean, las proposiciones pertenecen a `Prop`. Para declarar dos proposiciones escribimos:

```lean
variable (p q : Prop)
```

Esta línea indica que p y q son proposiciones, pero no demuestra ninguna de las dos. Para expresar que contamos con una prueba de p, podemos tener una hipótesis `hp : p`. La diferencia es que `p : Prop` declara la proposición y `hp : p` representa una prueba de ella.

### 2.2 Conectivos lógicos

Los conectivos permiten formar proposiciones compuestas. Lean utiliza una notación muy parecida a la que usamos en clase:

| Conectivo | Notación de clase | Escritura en Lean | Lectura |
| --- | --- | --- | --- |
| Conjunción | p ∧ q | `p ∧ q` | p y q |
| Disyunción | p ∨ q | `p ∨ q` | p o q, incluyendo que se cumplan ambas |
| Negación | ∼p | `¬p` | No p |
| Implicación | p ⇒ q | `p → q` | Si p, entonces q |
| Bicondicional | p ⇔ q | `p ↔ q` | p si y solo si q |

En los apuntes también aparece ≡ para indicar equivalencia lógica y, en Axiomática, la negación se representa con una barra sobre la fórmula. Al pasar a Lean conviene distinguir esos usos de la notación propia del lenguaje. Para expresar el bicondicional entre proposiciones usamos `↔`.

Para ver cómo se leen, tomemos p como «el programa compila» y q como «el programa se ejecuta». Las expresiones siguientes son ejemplos de traducción; escribirlas no significa que ya hayamos probado que sean verdaderas.

**Conjunción: `p ∧ q`.** Expresa «el programa compila y se ejecuta». Para demostrarla necesitamos probar las dos partes. Si ya tenemos `h : p ∧ q`, podemos obtener una prueba de p con `h.left` y una prueba de q con `h.right`. En el material de clase, obtener cada parte se llama Simplificación (Simp). Esto se relaciona con la demostración de conmutatividad de la persona 1, donde se toman ambas partes y se presentan en el orden contrario.

**Disyunción: `p ∨ q`.** Expresa «el programa compila o se ejecuta». Es una disyunción inclusiva: permite que se cumplan las dos proposiciones. Para demostrarla basta con probar uno de los lados. Si partimos de una hipótesis `h : p ∨ q` para demostrar otra conclusión, podemos analizar el caso en que tenemos p y el caso en que tenemos q.

**Negación: `¬p`.** Expresa «el programa no compila». En Lean, `¬p` está definida como `p → False`. Por eso, una forma de demostrarla consiste en suponer p y obtener una contradicción. `False` representa la falsedad.

**Implicación: `p → q`.** Expresa «si el programa compila, entonces se ejecuta». p es el antecedente y q es el consecuente. Tener una prueba de esta implicación permite obtener q cuando también contamos con una prueba de p. La implicación por sí sola no demuestra p. Este es el conectivo que utilizamos en Modus Ponens.

**Bicondicional: `p ↔ q`.** Expresa «el programa compila si y solo si se ejecuta». Para demostrarlo se deben justificar las dos direcciones: `p → q` y `q → p`. Una sola dirección no es suficiente.

### 2.3 Escritura y agrupación

En el editor con la extensión Lean 4 se pueden ingresar los símbolos mediante las siguientes secuencias, seguidas de espacio o Tab:

| Símbolo | Secuencia |
| --- | --- |
| `∧` | `\and` |
| `∨` | `\or` |
| `¬` | `\not` |
| `→` | `\to` |
| `↔` | `\iff` |

También conviene usar paréntesis para dejar claro qué proposiciones estamos relacionando. Por ejemplo, `p ∧ (p → q)` indica que tenemos p y, además, la implicación de p hacia q. En cambio, `(p ∧ p) → q` tiene como antecedente una conjunción. Cambiar los paréntesis puede cambiar el enunciado.

Para nuestra demostración escribimos `(p ∧ (p → q)) → q`: si se cumplen las dos premisas de Modus Ponens, podemos concluir q.

### 2.4 Relación con el material del curso

En Axiomática se presenta un sistema formal mediante su lenguaje, sus axiomas y sus reglas de inferencia. La sección de conectivos corresponde a la forma de escribir las fórmulas. Después, para demostrar una conclusión, se necesitan premisas y reglas que justifiquen los pasos.

En particular, Modus Ponens aparece en Axiomática como la regla que permite pasar de A y A ⇒ B a B. En Cuantificadores se presenta como p ⇒ q, p y, por lo tanto, q. Las letras cambian, pero la estructura de la regla es la misma.

Lean permite representar ese razonamiento con proposiciones de tipo `Prop`. Sin embargo, usar sus conectivos y tácticas no significa que estemos implementando desde cero el sistema de Hilbert-Ackermann de los apuntes. En esta parte representamos las proposiciones y verificamos una aplicación de la regla de Modus Ponens.

### Referencias

- Avigad, J., de Moura, L., Kong, S. y Ullrich, S. *Theorem Proving in Lean 4*, capítulo «Propositions and Proofs». https://lean-lang.org/theorem_proving_in_lean4/Propositions-and-Proofs/
- Avigad, J., Lewis, R. Y. y van Doorn, F. *Logic and Proof*, capítulo «Propositional Logic in Lean». https://leanprover-community.github.io/logic_and_proof/propositional_logic_in_lean.html

- Material de clase. *Axiomática*, pp. 1–3: sistema formal, conectivos y Modus Ponens.
- Material de clase. *Cuantificadores*, pp. 6–8: reglas de inferencia y de reemplazo.
