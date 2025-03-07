(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Refutes (BoundSet BoundSet) Bool)
(declare-fun Contains (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (Refutes a b))) (exists ((d BoundSet)) (exists ((c BoundSet)) (Contains c d))))))
(check-sat)
(get-model)