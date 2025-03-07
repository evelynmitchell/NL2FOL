(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsImprisoned (BoundSet) Bool)
(declare-fun Embezzled (BoundSet BoundSet) Bool)
(declare-fun IsNotClassTreasurer (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsImprisoned a) (Embezzled a b)))) (exists ((c BoundSet)) (IsNotClassTreasurer c)))))
(check-sat)
(get-model)