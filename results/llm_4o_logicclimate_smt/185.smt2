(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSittingOn (BoundSet BoundSet) Bool)
(declare-fun InFrontOf (BoundSet BoundSet) Bool)
(declare-fun IsSeatedOn (BoundSet BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((c BoundSet)) (and (IsSittingOn a b) (InFrontOf b c))))) (and (forall ((f BoundSet)) (forall ((e BoundSet)) (=> (IsSittingOn e f) (IsSeatedOn e f)))) (and (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsSeatedOn g h) (IsSittingOn g h)))) (and (forall ((j BoundSet)) (forall ((i BoundSet)) (forall ((k BoundSet)) (=> (IsOutside i) (IsSittingOn j k))))) (forall ((m BoundSet)) (forall ((l BoundSet)) (=> (IsOutside l) (InFrontOf l m)))))))) (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSeatedOn a b) (IsOutside b)))))))
(check-sat)
(get-model)