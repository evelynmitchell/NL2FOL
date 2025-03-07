(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsBunk (BoundSet) Bool)
(declare-fun IsSpentAllTime (BoundSet) Bool)
(declare-fun IsInLibrary (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (not (IsBunk a))) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (IsSpentAllTime c) (IsInLibrary d)))))))
(check-sat)
(get-model)