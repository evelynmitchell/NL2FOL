(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInPicture (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsInPicture a b))) (forall ((d BoundSet)) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (IsInPicture d e) (IsOutside f)))))) (exists ((c BoundSet)) (IsOutside c)))))
(check-sat)
(get-model)