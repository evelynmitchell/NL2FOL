(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsRisenOverTime (BoundSet) Bool)
(declare-fun IsBuiltIn (BoundSet BoundSet) Bool)
(declare-fun IsAlmostEverywhere (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(assert (not (=> (exists ((b BoundSet)) (IsRisenOverTime b)) (exists ((e BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (( (and (IsBuiltIn c d) (IsAlmostEverywhere e)))))))))
(check-sat)
(get-model)