(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsTan (BoundSet) Bool)
(declare-fun IsRunning (BoundSet) Bool)
(declare-fun IsLeaningOver (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsTan a) (and (IsRunning a) (IsLeaningOver a b))))) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (IsTan c) (and (IsRunning c) (IsLeaningOver c d))))))))
(check-sat)
(get-model)