(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInWhiteShirt (BoundSet) Bool)
(declare-fun IsSpeakingInto (BoundSet BoundSet) Bool)
(declare-fun IsMakingSpeech (BoundSet BoundSet) Bool)
(declare-fun IsInFrontOf (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsInWhiteShirt a) (IsSpeakingInto a b)))) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsInWhiteShirt a) (and (IsMakingSpeech a c) (IsInFrontOf a d)))))))))
(check-sat)
(get-model)