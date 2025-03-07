(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Ate (BoundSet BoundSet) Bool)
(declare-fun NeedsBetterRegulation (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (Ate a b) (and (Ate a c) (Ate a d))))))) (exists ((g BoundSet)) (exists ((e BoundSet)) (NeedsBetterRegulation e g))))))
(check-sat)
(get-model)