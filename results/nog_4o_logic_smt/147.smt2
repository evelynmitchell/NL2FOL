(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsYoung (BoundSet) Bool)
(declare-fun IsAsian (BoundSet) Bool)
(declare-fun IsSittingOn (BoundSet BoundSet) Bool)
(declare-fun IsInRubble (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsYoung a) (and (IsAsian a) (and (IsSittingOn a b) (IsInRubble a c))))))) (exists ((d BoundSet)) (exists ((a BoundSet)) (and (IsYoung a) (and (IsAsian a) (and (IsOutside a) (IsInRubble a d)))))))))
(check-sat)
(get-model)