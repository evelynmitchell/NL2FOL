(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun CutOff (BoundSet BoundSet) Bool)
(declare-fun Tailgating (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (CutOff a b))) (exists ((d BoundSet)) (exists ((c BoundSet)) (Tailgating c d))))))
(check-sat)
(get-model)