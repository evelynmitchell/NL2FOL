(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun SawClimateChangeAsDistantProspect (BoundSet BoundSet BoundSet) Bool)
(declare-fun InDecades (BoundSet BoundSet) Bool)
(declare-fun ConsideredImmediateConcern (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((b BoundSet)) (and (SawClimateChangeAsDistantProspect a b c) (InDecades c d)))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (not (ConsideredImmediateConcern a b)))))))
(check-sat)
(get-model)