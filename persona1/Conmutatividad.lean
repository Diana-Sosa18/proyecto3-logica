-- Proyecto 3, Lógica Matemática
-- Persona 1: conmutatividad de la conjunción y de la disyunción

-- Demostración 1: si p y q son verdaderas, entonces q y p son verdaderas.
theorem conmutatividad_and (p q : Prop) : p ∧ q → q ∧ p := by
  intro h          -- suponemos h : p ∧ q
  constructor      -- para probar q ∧ p hay que probar q y después p
  . exact h.right  -- q es la parte derecha de h
  . exact h.left   -- p es la parte izquierda de h

-- Demostración 2: si p o q es verdadera, entonces q o p es verdadera.
theorem conmutatividad_or (p q : Prop) : p ∨ q → q ∨ p := by
  intro h          -- suponemos h : p ∨ q
  cases h with     -- analizamos los dos casos posibles
  | inl hp =>      -- primer caso: tenemos hp : p
    apply Or.inr   -- basta con probar el lado derecho de q ∨ p
    exact hp
  | inr hq =>      -- segundo caso: tenemos hq : q
    apply Or.inl   -- basta con probar el lado izquierdo de q ∨ p
    exact hq
