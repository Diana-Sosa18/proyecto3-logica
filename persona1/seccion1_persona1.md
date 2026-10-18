# Persona 1

**Nombre:** Juan Fernando Menéndez Guerra
**Carné:** 17444

## 1. Qué es Lean y qué es un asistente de pruebas

### 1.1 Qué es un asistente de pruebas

Un asistente de pruebas es un programa de computadora que permite escribir demostraciones matemáticas de manera que la máquina pueda revisarlas paso por paso. La persona sigue siendo quien decide cómo demostrar algo: elige qué suponer, qué regla aplicar y en qué orden avanzar. El programa, por su parte, se encarga de comprobar que cada paso esté permitido por las reglas de la lógica. Si un paso no se justifica, el asistente no lo acepta y señala dónde está el problema.

Un asistente de pruebas no es lo mismo que un demostrador automático. Un demostrador automático recibe una afirmación y trata de encontrar la prueba por su cuenta, sin ayuda. Un asistente de pruebas, en cambio, trabaja de forma interactiva: la persona construye la demostración y la computadora la verifica. Algunos asistentes incluyen herramientas automáticas para completar pasos pequeños o cálculos largos, pero la idea central es la colaboración entre quien demuestra y el programa que revisa.

Esta forma de trabajar se parece mucho a lo que hacemos en el curso cuando escribimos una demostración formal. En clase, cada línea de una prueba debe justificarse con una premisa, un teorema ya conocido o una regla de inferencia, como el Modus Ponens. Un asistente de pruebas exige exactamente lo mismo, con la diferencia de que no deja pasar ningún descuido. Por eso, una demostración aceptada por un asistente ofrece un grado de confianza muy alto: no depende de que un lector humano revise con cuidado cada detalle.

### 1.2 Breve historia de los asistentes de pruebas

La idea de usar computadoras para revisar demostraciones surgió a finales de los años sesenta. En 1967, el matemático neerlandés Nicolaas de Bruijn comenzó el proyecto Automath, considerado el primer verificador de pruebas. Con este sistema, en 1977, se logró revisar por completo un libro de fundamentos del análisis escrito por Edmund Landau. Poco después, en 1972, Robin Milner presentó en la Universidad de Stanford el sistema LCF, cuya manera de organizar el programa, con un núcleo pequeño encargado de aceptar o rechazar cada paso, sigue presente en muchos asistentes actuales. En 1973, Andrzej Trybulec creó en Polonia el sistema Mizar, basado en la teoría de conjuntos y pensado para que las pruebas se leyeran de forma parecida a un texto matemático común.

Durante los años ochenta aparecieron sistemas que todavía se usan hoy. En 1984, Gérard Huet y Thierry Coquand iniciaron en Francia el desarrollo de Coq (hoy conocido como Rocq), basado en una teoría llamada cálculo de construcciones, y en 1989 se publicó una de sus primeras versiones estables. En 1986, Lawrence Paulson, de la Universidad de Cambridge, presentó Isabelle, otro asistente de gran influencia.

Con el tiempo, estas herramientas pasaron de revisar ejercicios pequeños a verificar resultados famosos. En 2005, Georges Gonthier terminó en Coq una demostración completamente revisada por computadora del teorema de los cuatro colores, que afirma que cualquier mapa puede colorearse con solo cuatro colores sin que dos regiones vecinas compartan color. En 2014, el equipo de Thomas Hales completó el proyecto Flyspeck, que verificó con los asistentes HOL Light e Isabelle la prueba de la conjetura de Kepler sobre la forma más eficiente de acomodar esferas. Ambos resultados tenían demostraciones tan largas que era muy difícil revisarlas a mano con total seguridad.

### 1.3 Qué es Lean

Lean es un asistente de pruebas y, al mismo tiempo, un lenguaje de programación. Es software libre, distribuido bajo la licencia Apache 2.0, y su código está disponible públicamente. Con Lean se pueden escribir programas comunes, pero su uso más conocido es escribir definiciones, enunciados y demostraciones matemáticas que la computadora verifica.

La base teórica de Lean se llama cálculo de construcciones inductivas, la misma familia de teorías que usa Coq. Sin entrar en detalles técnicos, la idea principal es que en Lean las proposiciones se tratan como si fueran tipos de datos y las demostraciones como objetos de esos tipos. Así como en un lenguaje de programación el número 5 es un objeto de tipo entero, en Lean una demostración de "p y q" es un objeto cuyo tipo es la proposición p ∧ q. Demostrar una proposición significa, entonces, construir un objeto de ese tipo. Cuando Lean revisa una prueba hace algo parecido a lo que hace un compilador al revisar un programa: confirma que todo encaja y, si algo no corresponde, muestra un error. Esta correspondencia entre proposiciones y tipos se conoce como la correspondencia de Curry y Howard.

Para escribir una demostración, Lean ofrece dos estilos. En el primero se escribe directamente el objeto que sirve como prueba. En el segundo, llamado modo de tácticas, se avanza con instrucciones como intro, exact o constructor, cada una de las cuales transforma lo que falta por demostrar, de forma muy parecida a como avanzamos línea por línea en clase. Mientras se trabaja, Lean muestra en todo momento qué hipótesis están disponibles y qué meta queda pendiente.

Alrededor de Lean existe además una comunidad grande que mantiene Mathlib, una biblioteca de matemáticas escrita y verificada en Lean. Mathlib comenzó en 2017 y en 2025 ya reunía más de doscientos mil teoremas de áreas como álgebra, análisis, topología y teoría de números. Gracias a esta biblioteca, quien usa Lean no tiene que demostrar todo desde cero, sino que puede apoyarse en resultados que ya fueron revisados.

### 1.4 Historia de Lean

Lean nació en 2013 como un proyecto de Leonardo de Moura, investigador de Microsoft Research. De Moura ya era conocido por haber creado Z3, un programa muy usado para verificar software, y con Lean buscaba unir la verificación de programas con la formalización de matemáticas. Las primeras versiones fueron experimentales. Lean 2, publicado en 2015, fue la primera versión oficial, y Lean 3, publicado en enero de 2017, fue la primera versión lo bastante estable como para atraer a una comunidad de matemáticos y estudiantes. Ese mismo año comenzó la biblioteca Mathlib.

En 2018 inició el desarrollo de Lean 4, una versión reescrita casi por completo, ahora implementada en gran parte en el mismo Lean. Su versión 4.0 estable se publicó el 8 de septiembre de 2023. En julio de ese año, Leonardo de Moura y Sebastian Ullrich fundaron Lean FRO, una organización sin fines de lucro dedicada a mantener y mejorar Lean. Para cuando se redactó este documento, la versión estable más reciente era la 4.35.0, que es la que se usó para las demostraciones de este proyecto.

Varios logros dieron a conocer a Lean fuera del ámbito de la computación. A finales de 2020, el matemático Peter Scholze propuso el reto de verificar en Lean uno de sus resultados más complejos, y en julio de 2022 un equipo dirigido por Johan Commelin terminó esa verificación, conocida como Liquid Tensor Experiment. En 2023, Terence Tao y otros matemáticos formalizaron en unas tres semanas la demostración de la conjetura polinomial de Freiman y Ruzsa, pocas semanas después de que los autores dieran a conocer la prueba. En 2025, Lean recibió el premio de software de lenguajes de programación que otorga ACM SIGPLAN.

Lean también tiene un lugar en la enseñanza. Kevin Buzzard, del Imperial College de Londres, lo ha usado con estudiantes de matemáticas, y existen materiales en línea para aprender desde cero. La referencia principal de este proyecto es el libro Logic and Proof, escrito por Jeremy Avigad, Robert Y. Lewis y Floris van Doorn, y adaptado a Lean 4 por Joseph Hua. El libro enseña lógica proposicional y lógica de primer orden al mismo tiempo que muestra cómo escribir esas pruebas en Lean.

### 1.5 Instalación

Hay dos formas de empezar a usar Lean. La más sencilla no requiere instalar nada: en la página live.lean-lang.org hay un editor en línea donde se puede escribir código de Lean y ver de inmediato si las pruebas son correctas. Los ejemplos del libro Logic and Proof incluyen un botón que abre cada ejemplo directamente en ese editor. Esta opción es útil para probar ideas rápidas, aunque depende de la conexión a internet.

La segunda forma, y la recomendada para trabajar con más comodidad, es instalar Lean en la computadora junto con el editor Visual Studio Code. Para este proyecto se instaló en una computadora con Fedora Linux siguiendo estos pasos:

1. Instalar Visual Studio Code, que se descarga desde code.visualstudio.com.
2. Verificar que estén instalados git y curl. En Fedora se instalan con el comando `sudo dnf install git curl`.
3. Instalar elan, el administrador de versiones de Lean, con el comando oficial:

   ```
   curl https://elan.lean-lang.org/elan-init.sh -sSf | sh
   ```

   Al terminar, se ejecuta `source $HOME/.elan/env` (o se abre una terminal nueva) para que el sistema reconozca los comandos de Lean.
4. Instalar en Visual Studio Code la extensión llamada Lean 4. Se busca por su nombre en el panel de extensiones (Ctrl+Shift+X) o se instala desde la terminal con `code --install-extension leanprover.lean4`.
5. Comprobar la instalación con `lean --version`. En nuestro caso, el resultado fue Lean 4.35.0, junto con elan 4.2.4 y Lake 5.0.0.

En sistemas Windows y macOS el proceso es todavía más directo: basta con instalar Visual Studio Code y la extensión Lean 4, y la propia extensión abre una guía que instala lo demás.

Al terminar quedan instaladas tres herramientas, cada una con una función distinta. Elan se encarga de descargar y actualizar las versiones de Lean, de modo que cada proyecto pueda usar la versión que necesita. Lean es el programa que revisa el código y las demostraciones. Lake es la herramienta que crea y organiza proyectos; por ejemplo, el comando `lake new MiProyecto` crea una carpeta con todo lo necesario, y `lake build` revisa el proyecto completo. Si se quiere trabajar con la biblioteca Mathlib, existe una variante de este comando que la descarga, aunque la primera descarga tarda bastante. Para las demostraciones de este trabajo no se necesitó Mathlib, porque las conectivas lógicas y las tácticas básicas ya vienen incluidas en Lean.

Para revisar que todo funciona, se crea un archivo con extensión .lean, por ejemplo Prueba.lean, y se escribe la línea `#eval 1 + 1`. Si la instalación es correcta, Lean muestra el resultado 2. Al abrir un archivo .lean, Visual Studio Code muestra a la derecha un panel llamado Lean Infoview. Este panel indica, según la posición del cursor, qué hipótesis se tienen y qué falta por demostrar. Cuando una demostración está completa, el panel muestra el mensaje No goals, que significa que ya no quedan metas pendientes, junto con el aviso Goals accomplished!, y en el margen izquierdo aparece una doble marca de verificación junto al teorema.

## Demostraciones

Ambas demostraciones están en el archivo `Conmutatividad.lean`. Se escribieron en modo de tácticas y solo usan lo que trae Lean por defecto, sin bibliotecas adicionales. En ellas, p y q representan proposiciones cualesquiera, lo que en Lean se escribe `(p q : Prop)`.

### Demostración 1: conmutatividad de la conjunción

**Enunciado:** p ∧ q → q ∧ p

**Razonamiento en lenguaje natural.** Supongamos que p ∧ q es verdadera. Por la regla de eliminación de la conjunción (simplificación), de p ∧ q se obtiene p y también se obtiene q. Teniendo q y teniendo p, la regla de introducción de la conjunción permite concluir q ∧ p. Como la conclusión se obtuvo a partir de suponer p ∧ q, queda demostrada la implicación p ∧ q → q ∧ p.

**Código en Lean:**

```lean
theorem conmutatividad_and (p q : Prop) : p ∧ q → q ∧ p := by
  intro h          -- suponemos h : p ∧ q
  constructor      -- para probar q ∧ p hay que probar q y después p
  . exact h.right  -- q es la parte derecha de h
  . exact h.left   -- p es la parte izquierda de h
```

**Explicación paso a paso.**

- La primera línea da nombre al teorema y escribe su enunciado. La palabra `by` indica que la prueba se hará con tácticas.
- `intro h` corresponde a suponer el antecedente de la implicación. A partir de aquí se cuenta con la hipótesis h, que dice p ∧ q, y la meta pasa a ser q ∧ p.
- `constructor` aplica la introducción de la conjunción: para demostrar q ∧ p, Lean divide el trabajo en dos metas, primero q y después p.
- `exact h.right` resuelve la primera meta. La expresión h.right toma la parte derecha de p ∧ q, que es q. Es la eliminación de la conjunción.
- `exact h.left` resuelve la segunda meta tomando la parte izquierda de h, que es p.

Después de la última línea ya no queda nada por demostrar y Lean acepta el teorema. Como prueba de que Lean sí revisa cada paso, si se intercambian por error las dos últimas líneas, o se escribe h.left en ambas, Lean marca un error indicando que se esperaba una prueba de q y se recibió una prueba de p.

**Captura:**

![Demostración de la conmutatividad de la conjunción en Lean](capturas/conmutatividad_and.png)

Con el cursor al final de la línea 9, el panel Lean Infoview muestra No goals y el mensaje Goals accomplished! para el teorema de la línea 5, que además tiene la doble marca en el margen. La barra inferior indica 0 errores y 0 advertencias.

### Demostración 2: conmutatividad de la disyunción

**Enunciado:** p ∨ q → q ∨ p

**Razonamiento en lenguaje natural.** Supongamos que p ∨ q es verdadera. No sabemos cuál de las dos proposiciones es la verdadera, así que razonamos por casos. Si p es verdadera, por la regla de introducción de la disyunción (adición) se obtiene q ∨ p, colocando p del lado derecho. Si q es verdadera, por la misma regla se obtiene q ∨ p, ahora con q del lado izquierdo. Como en los dos casos posibles se llega a q ∨ p, la regla de eliminación de la disyunción permite concluir q ∨ p. Por lo tanto, p ∨ q → q ∨ p.

**Código en Lean:**

```lean
theorem conmutatividad_or (p q : Prop) : p ∨ q → q ∨ p := by
  intro h          -- suponemos h : p ∨ q
  cases h with     -- analizamos los dos casos posibles
  | inl hp =>      -- primer caso: tenemos hp : p
    apply Or.inr   -- basta con probar el lado derecho de q ∨ p
    exact hp
  | inr hq =>      -- segundo caso: tenemos hq : q
    apply Or.inl   -- basta con probar el lado izquierdo de q ∨ p
    exact hq
```

**Explicación paso a paso.**

- Igual que antes, `intro h` supone el antecedente. Ahora h dice p ∨ q y la meta es q ∨ p.
- `cases h with` separa la prueba en los dos casos que permite una disyunción. En Lean, inl significa que la disyunción es verdadera por su lado izquierdo e inr que lo es por su lado derecho.
- En el caso `inl hp` se cuenta con hp, una prueba de p. La táctica `apply Or.inr` indica que se demostrará q ∨ p por su lado derecho, así que la meta se reduce a p, y `exact hp` la cierra.
- En el caso `inr hq` se cuenta con hq, una prueba de q. Con `apply Or.inl` se elige el lado izquierdo de q ∨ p, la meta se reduce a q y `exact hq` la cierra.

Al resolver ambos casos, Lean confirma que la demostración está completa.

**Captura:**

![Demostración de la conmutatividad de la disyunción en Lean](capturas/conmutatividad_or.png)

Con el cursor al final de la línea 20, después de cerrar el segundo caso, el panel muestra No goals y el mensaje Goals accomplished! para el teorema de la línea 12.

### Observación sobre ambas demostraciones

Las dos implicaciones demostradas valen para cualquier par de proposiciones. Por eso, si en cada teorema se intercambian los nombres de p y q, se obtienen también q ∧ p → p ∧ q y q ∨ p → p ∨ q. Juntando las dos direcciones, se concluye que p ∧ q equivale a q ∧ p y que p ∨ q equivale a q ∨ p, que son las leyes conmutativas vistas en clase.

## Reflexión personal

Antes de este proyecto, para mí una demostración era algo que se escribía en papel y que alguien más, normalmente el catedrático, revisaba después. Trabajar con Lean me hizo ver el proceso de otra forma. Lo primero que me llamó la atención fue que la computadora no acepta nada "porque es obvio". En clase, a veces uno salta un paso sencillo sabiendo que el lector lo va a entender, pero en Lean cada paso tiene que estar escrito y justificado, aunque se trate de algo tan simple como cambiar el orden de p y q.

Al principio me costó entender la idea de que una prueba es un objeto de un tipo, porque es muy distinta a la forma en que estamos acostumbrados a pensar en una demostración. Sin embargo, al escribir las pruebas de conmutatividad noté que las tácticas siguen casi la misma lógica que las reglas de inferencia del curso: intro es suponer el antecedente, constructor es la introducción de la conjunción y cases es razonar por casos. Ver esa relación me ayudó a entender mejor las propias reglas, porque tuve que pensar qué hace exactamente cada una.

También me pareció útil la instalación, ya que me obligó a conocer las herramientas con las que trabaja Lean en lugar de quedarme únicamente con el editor en línea. Lo que más valoro es el panel que muestra qué falta por demostrar, porque permite avanzar sin perderse y equivocarse sin miedo, ya que Lean indica de inmediato dónde está el error. Creo que este tipo de herramientas puede ayudar mucho a quienes aprendemos lógica, y me quedo con la curiosidad de probar demostraciones más largas.

## Referencias

- Avigad, J., Lewis, R. Y., van Doorn, F. y Hua, J. *Logic and Proof*. Lean Community. https://leanprover-community.github.io/logic_and_proof/
- de Moura, L. y Ullrich, S. (2021). The Lean 4 Theorem Prover and Programming Language. En *Automated Deduction, CADE 28*, Lecture Notes in Computer Science, vol. 12699. Springer.
- de Moura, L., Kong, S., Avigad, J., van Doorn, F. y von Raumer, J. (2015). The Lean Theorem Prover (System Description). En *Automated Deduction, CADE 25*. Springer.
- Lean FRO. Install Lean. https://lean-lang.org/install/
- Lean FRO. The Lean Language Reference. https://lean-lang.org/doc/reference/latest/