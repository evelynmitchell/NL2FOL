(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsLeftAsIs (BoundSet) Bool)
(declare-fun IsCalled (BoundSet) Bool)
(declare-fun IsDecided (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsLeftAsIs a)) (exists ((b BoundSet)) (exists ((d BoundSet)) (and (IsCalled b) (not (IsDecided d))))))))
(check-sat)
(get-model)