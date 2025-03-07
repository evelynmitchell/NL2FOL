(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsAtWarWith (BoundSet BoundSet) Bool)
(declare-fun IsAsSignificantAs (BoundSet BoundSet) Bool)
(declare-fun IsSignificant (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (IsAtWarWith a b))) (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((e BoundSet)) (forall ((h BoundSet)) (=> (IsAtWarWith e f) (IsAsSignificantAs g h))))))) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (IsSignificant c) (IsAsSignificantAs c d)))))))
(check-sat)
(get-model)