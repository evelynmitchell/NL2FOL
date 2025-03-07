(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsCampingOutOn (BoundSet BoundSet) Bool)
(declare-fun IsOutdoors (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsCampingOutOn a b))) (forall ((e BoundSet)) (forall ((f BoundSet)) (forall ((d BoundSet)) (=> (IsCampingOutOn d e) (IsOutdoors f)))))) (exists ((c BoundSet)) (IsOutdoors c)))))
(check-sat)
(get-model)