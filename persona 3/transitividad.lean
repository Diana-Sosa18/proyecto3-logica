theorem trans_imp (p q r : Prop) (hpq : p → q) (hqr : q → r) : p → r := by
  intro hp
  apply hqr
  apply hpq
  exact hp
