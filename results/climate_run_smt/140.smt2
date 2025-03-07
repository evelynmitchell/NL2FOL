(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsStandingInLine (BoundSet) Bool)
(declare-fun IsHoldingLitRomanCandles (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsStandingInLine a)) (exists ((c BoundSet)) (IsHoldingLitRomanCandles c)))))
(check-sat)
(get-model)