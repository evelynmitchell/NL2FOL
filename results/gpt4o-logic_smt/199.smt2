(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Rides (BoundSet BoundSet) Bool)
(declare-fun IsInDaytime (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (Rides a b))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (Rides a b) (IsInDaytime b)))))))
(check-sat)
(get-model)