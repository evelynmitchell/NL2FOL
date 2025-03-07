(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun Reduces (BoundSet BoundSet) Bool)
(declare-fun WillBecome (BoundSet BoundSet) Bool)
(declare-fun HasConstantFearFor (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (Reduces a b))) (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (WillBecome f g) (Reduces h i))))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (WillBecome c d) (HasConstantFearFor e))))))))
(check-sat)
(get-model)