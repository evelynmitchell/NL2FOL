(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsPlaying (BoundSet) Bool)
(declare-fun IsOnStreetCorner (BoundSet) Bool)
(declare-fun IsUnrecognizable (BoundSet) Bool)
(declare-fun IsWatchingInBackground (BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsPlaying a) (IsOnStreetCorner b)))) (exists ((e BoundSet)) (exists ((d BoundSet)) (and (IsUnrecognizable d) (IsWatchingInBackground e)))))))
(check-sat)
(get-model)