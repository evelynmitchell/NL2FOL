(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSitting (BoundSet) Bool)
(declare-fun IsOnBench (BoundSet) Bool)
(declare-fun InFrontOfBuildings (BoundSet) Bool)
(declare-fun IsSeated (BoundSet) Bool)
(declare-fun IsOutside (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((b BoundSet)) (and (IsSitting a) (and (IsOnBench a) (InFrontOfBuildings b))))) (and (forall ((e BoundSet)) (=> (IsSitting e) (IsSeated e))) (and (forall ((f BoundSet)) (=> (IsSeated f) (IsSitting f))) (and (forall ((g BoundSet)) (=> (IsSitting g) (IsOnBench g))) (and (forall ((h BoundSet)) (=> (IsOnBench h) (IsSitting h))) (and (forall ((i BoundSet)) (=> (IsOnBench i) (IsSeated i))) (forall ((j BoundSet)) (=> (IsSeated j) (IsOnBench j))))))))) (exists ((a BoundSet)) (and (IsSeated a) (and (IsOnBench a) (IsOutside a)))))))
(check-sat)
(get-model)