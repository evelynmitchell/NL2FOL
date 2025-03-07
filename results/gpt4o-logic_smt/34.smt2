(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsFallacious (BoundSet) Bool)
(declare-fun IsIncoherent (BoundSet) Bool)
(declare-fun IsIllogical (BoundSet) Bool)
(declare-fun IsInvalid (BoundSet) Bool)
(declare-fun IsAttemptToRefute (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsFallacious a) (and (IsIncoherent a) (IsIllogical a)))) (and (forall ((e BoundSet)) (forall ((d BoundSet)) (=> (IsFallacious d) (IsInvalid e)))) (forall ((f BoundSet)) (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsAttemptToRefute f g) (IsIncoherent h))))))) (exists ((c BoundSet)) (exists ((b BoundSet)) (and (IsAttemptToRefute b c) (IsInvalid b)))))))
(check-sat)
(get-model)