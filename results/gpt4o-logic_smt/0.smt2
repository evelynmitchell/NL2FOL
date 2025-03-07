(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsGiven (BoundSet BoundSet) Bool)
(declare-fun IsInLimbo (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsInHeaven (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((a BoundSet)) (and (exists ((b BoundSet)) (( (and (IsGiven b a) (IsInLimbo c)))) (IsInHeaven c)))) (exists ((f BoundSet)) (exists ((a BoundSet)) (IsGiven f a))))))
(check-sat)
(get-model)