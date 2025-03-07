(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInGreen (BoundSet) Bool)
(declare-fun KickedSoccerBall (BoundSet) Bool)
(declare-fun IsInPurpleAndWhite (BoundSet) Bool)
(declare-fun FellDown (BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((b BoundSet)) (and (IsInGreen b) (KickedSoccerBall c)))) (exists ((d BoundSet)) (and (IsInPurpleAndWhite d) (FellDown d))))))
(check-sat)
(get-model)