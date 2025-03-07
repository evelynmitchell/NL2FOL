(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun MovingFrom (BoundSet BoundSet) Bool)
(declare-fun MovingTo (BoundSet BoundSet) Bool)
(declare-fun OnLandLonger (BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun ExtendingFastingSeasonUnhealthily (BoundSet) Bool)
(declare-fun Starving (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (exists ((c BoundSet)) (exists ((d BoundSet)) (and (exists ((b BoundSet)) (( (and (MovingFrom a b) (and (MovingTo a c) (OnLandLonger a))))) (ExtendingFastingSeasonUnhealthily d))))) (forall ((e BoundSet)) (forall ((f BoundSet)) (=> (Starving e) (ExtendingFastingSeasonUnhealthily f))))) (exists ((a BoundSet)) (Starving a)))))
(check-sat)
(get-model)