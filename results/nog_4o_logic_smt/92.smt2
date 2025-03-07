(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun WillNotBuy (BoundSet BoundSet) Bool)
(declare-fun WillGetMadeFunOf (BoundSet) Bool)
(declare-fun WillNotBeChosen (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((b BoundSet)) (exists ((a BoundSet)) (and (WillNotBuy b a) (WillGetMadeFunOf a)))) (exists ((a BoundSet)) (exists ((c BoundSet)) (WillNotBeChosen a c))))))
(check-sat)
(get-model)