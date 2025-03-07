(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsSlightlyObese (BoundSet) Bool)
(declare-fun IsNormalInAmerica (BoundSet) Bool)
(declare-fun IsNormal (BoundSet) Bool)
(assert (not (=> (and (exists ((x BoundSet)) (and (IsSlightlyObese x) (IsNormalInAmerica x))) (forall ((c BoundSet)) (forall ((d BoundSet)) (=> (IsSlightlyObese c) (IsNormal d))))) (exists ((b BoundSet)) (and (IsSlightlyObese b) (IsNormal b))))))
(check-sat)
(get-model)