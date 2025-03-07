(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInGreenland (BoundSet) Bool)
(declare-fun ContributesTo (BoundSet) Bool)
(declare-fun RisesBy (BoundSet) Bool)
(declare-fun Floods (BoundSet) Bool)
(declare-fun IsLost (BoundSet) Bool)
(declare-fun Contains (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsInGreenland a) (ContributesTo b)))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (ContributesTo f) (RisesBy g)))) (and (forall ((h BoundSet)) (forall ((i BoundSet)) (=> (RisesBy h) (ContributesTo i)))) (forall ((k BoundSet)) (forall ((j BoundSet)) (=> (Floods j) (ContributesTo k))))))) (exists ((c BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsLost a) (and (RisesBy c) (Contains d)))))))))
(check-sat)
(get-model)