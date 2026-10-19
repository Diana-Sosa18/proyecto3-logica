-- Proyecto 3, Lógica Matemática
--  Modus Ponens
-- Si tenemos p y también p → q, podemos concluir q.

theorem modus_ponens (p q : Prop) : (p ∧ (p → q)) → q := by
  intro h          -- h contiene las dos premisas
  apply h.right    -- usamos p → q; ahora falta demostrar p
  exact h.left     -- p es la primera parte de h
