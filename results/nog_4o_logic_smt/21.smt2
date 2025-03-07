(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun WantsToRedo (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (WantsToRedo a b))) (exists ((a BoundSet)) (exists ((c BoundSet)) (WantsToRedo a c))))))
(check-sat)
(get-model)