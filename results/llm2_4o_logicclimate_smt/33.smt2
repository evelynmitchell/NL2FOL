(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsNotPollutant (BoundSet) Bool)
(declare-fun IsPollutant (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (IsNotPollutant a)) (forall ((c BoundSet)) (=> (IsNotPollutant c) (IsPollutant c)))) (exists ((a BoundSet)) (not (IsPollutant a))))))
(check-sat)
(get-model)