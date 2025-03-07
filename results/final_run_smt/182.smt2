(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWears (BoundSet BoundSet) Bool)
(declare-fun IsGray (BoundSet) Bool)
(declare-fun IsYellow (BoundSet) Bool)
(declare-fun IsHeeled (BoundSet) Bool)
(declare-fun IsWearing (BoundSet BoundSet) Bool)
(declare-fun IsFive (BoundSet) Bool)
(assert (not (=> (and (exists ((d BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (exists ((a BoundSet)) (or (and (IsWears b c) (and (IsGray a) (IsYellow a))) (IsHeeled d)))))) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsWearing g h) (IsYellow h))))) (exists ((e BoundSet)) (exists ((a BoundSet)) (and (IsFive e) (IsWearing e a)))))))
(check-sat)
(get-model)