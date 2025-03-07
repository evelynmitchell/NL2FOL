(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsWithUmbrella (BoundSet) Bool)
(declare-fun ObservesFloodedStreets (BoundSet) Bool)
(declare-fun IsInWater (BoundSet) Bool)
(declare-fun IsFlooded (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (and (IsWithUmbrella a) (and (ObservesFloodedStreets a) (IsInWater c))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (=> (IsFlooded f) (IsWithUmbrella g)))) (and (forall ((i BoundSet)) (forall ((h BoundSet)) (=> (ObservesFloodedStreets h) (IsFlooded i)))) (and (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsFlooded j) (ObservesFloodedStreets k)))) (and (forall ((l BoundSet)) (forall ((m BoundSet)) (=> (IsInWater l) (IsFlooded m)))) (forall ((n BoundSet)) (forall ((o BoundSet)) (=> (IsFlooded n) (IsInWater o))))))))) (exists ((e BoundSet)) (IsFlooded e)))))
(check-sat)
(get-model)