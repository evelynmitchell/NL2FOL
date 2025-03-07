(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsExpectedBy (BoundSet BoundSet) Bool)
(declare-fun IsFromShift (BoundSet BoundSet) Bool)
(declare-fun IsCausing (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsExpectedBy b c) (IsFromShift a c))))) (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (IsExpectedBy f g) (IsCausing h i))))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (IsCausing a d))))))
(check-sat)
(get-model)