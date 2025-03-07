(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsToddler (BoundSet) Bool)
(declare-fun IsOnShoulders (BoundSet) Bool)
(declare-fun IsFun (BoundSet) Bool)
(declare-fun IsWithDad (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsToddler a) (IsOnShoulders a))) (and (forall ((d BoundSet)) (forall ((e BoundSet)) (=> (IsToddler d) (IsFun e)))) (forall ((g BoundSet)) (forall ((f BoundSet)) (=> (IsFun f) (IsToddler g)))))) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsFun b) (IsWithDad c)))))))
(check-sat)
(get-model)