(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsLimitedTo (BoundSet BoundSet) Bool)
(declare-fun IsPossibleWithin (BoundSet BoundSet) Bool)
(declare-fun IsUnprecedented (BoundSet) Bool)
(declare-fun AreRequired (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsLimitedTo a b) (IsPossibleWithin a c))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsUnprecedented a) (and (AreRequired a) (IsLimitedTo a b))))))))
(check-sat)
(get-model)