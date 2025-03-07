(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsCaught (BoundSet BoundSet) Bool)
(declare-fun IsPlaying (BoundSet) Bool)
(declare-fun Threw (BoundSet BoundSet) Bool)
(declare-fun IsTheSamePerson (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (IsCaught a b))) (exists ((c BoundSet)) (exists ((d BoundSet)) (exists ((e BoundSet)) (and (IsPlaying c) (and (Threw d e) (IsTheSamePerson d e)))))))))
(check-sat)
(get-model)