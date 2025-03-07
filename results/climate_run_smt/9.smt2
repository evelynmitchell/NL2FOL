(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsDiedPrematurely (BoundSet) Bool)
(declare-fun IsFromPollution (BoundSet) Bool)
(declare-fun IsIn2015 (BoundSet) Bool)
(declare-fun IsDeaths (BoundSet) Bool)
(declare-fun IsCausedBy (BoundSet) Bool)
(declare-fun IsWorldwide (BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((b BoundSet)) (exists ((a BoundSet)) (and (IsDiedPrematurely b) (and (IsFromPollution c) (IsIn2015 a)))))) (and (forall ((h BoundSet)) (forall ((g BoundSet)) (=> (IsDiedPrematurely g) (IsDeaths h)))) (and (forall ((j BoundSet)) (forall ((i BoundSet)) (=> (IsFromPollution i) (IsCausedBy j)))) (forall ((k BoundSet)) (forall ((l BoundSet)) (=> (IsCausedBy k) (IsFromPollution l))))))) (exists ((e BoundSet)) (exists ((d BoundSet)) (exists ((f BoundSet)) (and (IsCausedBy d) (and (IsDeaths e) (IsWorldwide f)))))))))
(check-sat)
(get-model)