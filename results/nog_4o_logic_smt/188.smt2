(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsInParade (BoundSet) Bool)
(declare-fun Marches (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsInParade a) (Marches b)))) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsInParade a) (Marches c)))))))
(check-sat)
(get-model)