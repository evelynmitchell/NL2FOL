(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun WentTo (BoundSet BoundSet) Bool)
(declare-fun KnowsEverythingAbout (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (WentTo a b))) (exists ((c BoundSet)) (exists ((a BoundSet)) (KnowsEverythingAbout a c))))))
(check-sat)
(get-model)