(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsMagnificent (BoundSet) Bool)
(declare-fun CanChangeFundamentally (BoundSet) Bool)
(declare-fun IsShortTimePeriod (BoundSet) Bool)
(declare-fun WillChange (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsMagnificent a) (and (CanChangeFundamentally a) (IsShortTimePeriod b))))) (forall ((c BoundSet)) (=> (WillChange c) (CanChangeFundamentally c)))) (exists ((a BoundSet)) (and (IsMagnificent a) (WillChange a))))))
(check-sat)
(get-model)