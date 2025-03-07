(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsSixFeet (BoundSet) Bool)
(declare-fun AreDisplaced (BoundSet) Bool)
(declare-fun AreIn (BoundSet BoundSet) Bool)
(declare-fun IsMegacity (BoundSet) Bool)
(declare-fun AreVulnerable (BoundSet) Bool)
(declare-fun IsWipedOffMap (BoundSet) Bool)
(declare-fun AffectsMegacities (BoundSet BoundSet) Bool)
(declare-fun CausesMassiveDisplacement (BoundSet BoundSet) Bool)
(declare-fun CausesDestruction (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((c BoundSet)) (exists ((b BoundSet)) (exists ((e BoundSet)) (exists ((f BoundSet)) (exists ((g BoundSet)) (exists ((a BoundSet)) (exists ((d BoundSet)) (and (IsSixFeet a) (and (AreDisplaced b) (and (AreIn c b) (and (or (IsMegacity e) (or (IsMegacity f) (IsMegacity g))) (and (AreVulnerable d) (IsWipedOffMap d))))))))))))) (forall ((o BoundSet)) (forall ((n BoundSet)) (forall ((m BoundSet)) (=> (IsWipedOffMap m) (AffectsMegacities n o)))))) (exists ((i BoundSet)) (exists ((j BoundSet)) (exists ((k BoundSet)) (exists ((h BoundSet)) (exists ((l BoundSet)) (and (IsSixFeet i) (and (and (CausesMassiveDisplacement h j) (CausesDestruction h k)) (AffectsMegacities k l)))))))))))
(check-sat)
(get-model)