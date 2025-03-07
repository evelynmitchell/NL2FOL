(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInSuit (BoundSet) Bool)
(declare-fun IsCheering (BoundSet) Bool)
(declare-fun IsInLibrary (BoundSet) Bool)
(declare-fun IsInFrontOf (BoundSet BoundSet) Bool)
(declare-fun IsNear (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsInSuit a) (and (IsCheering a) (and (IsInLibrary a) (IsInFrontOf a c)))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsCheering d) (IsNear d e)))))))
(check-sat)
(get-model)