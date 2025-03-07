(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsStandingAtSide (BoundSet) Bool)
(declare-fun IsSideOf (BoundSet BoundSet) Bool)
(declare-fun IsStanding (BoundSet) Bool)
(assert (not (=> (and (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsStandingAtSide a) (and (IsStandingAtSide b) (IsSideOf c d))))))) (and (forall ((e BoundSet)) (=> (IsStandingAtSide e) (IsStanding e))) (forall ((f BoundSet)) (=> (IsStandingAtSide f) (IsStanding f))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsStanding a) (IsStanding b)))))))
(check-sat)
(get-model)