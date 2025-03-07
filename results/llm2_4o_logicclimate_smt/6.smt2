(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsAffected (BoundSet) Bool)
(declare-fun WillExperienceChange (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (IsAffected a)) (exists ((c BoundSet)) (exists ((b BoundSet)) (WillExperienceChange b c))))))
(check-sat)
(get-model)