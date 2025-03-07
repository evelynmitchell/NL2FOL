(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun HasBackpack (BoundSet) Bool)
(declare-fun AreAtTable (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (HasBackpack b) (AreAtTable b a)))) (forall ((d BoundSet)) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (HasBackpack d) (AreAtTable e f)))))) (exists ((a BoundSet)) (exists ((c BoundSet)) (AreAtTable c a))))))
(check-sat)
(get-model)