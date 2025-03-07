(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IncreasedEmissions (BoundSet BoundSet) Bool)
(declare-fun PastDecade (BoundSet) Bool)
(declare-fun IsHigherThan (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IncreasedEmissions a b) (PastDecade c))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (IsHigherThan d e))))))
(check-sat)
(get-model)