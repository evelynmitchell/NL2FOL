(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun { () BoundSet)
(declare-fun | () BoundSet)
(declare-fun } () BoundSet)
(declare-fun IsWhite (BoundSet) Bool)
(declare-fun IsGreyhound (BoundSet) Bool)
(declare-fun IsWearingMuzzle (BoundSet) Bool)
(declare-fun IsRunningAroundTrack (BoundSet) Bool)
(declare-fun IsRacing (BoundSet BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsWhite a) (and (IsGreyhound a) (and (IsWearingMuzzle a) (IsRunningAroundTrack a))))) (and (forall ((f BoundSet)) (forall ((g BoundSet)) (forall ((h BoundSet)) (=> (IsWhite f) (IsRacing g h))))) (and (forall ((i BoundSet)) (forall ((j BoundSet)) (forall ((k BoundSet)) (=> (IsRacing i j) (IsWhite k))))) (and (forall ((n BoundSet)) (forall ((l BoundSet)) (forall ((m BoundSet)) (=> (IsGreyhound l) (IsRacing m n))))) (and (forall ((q BoundSet)) (forall ((o BoundSet)) (forall ((p BoundSet)) (=> (IsRacing o p) (IsGreyhound q))))) (and (forall ((s BoundSet)) (forall ((r BoundSet)) (forall ((t BoundSet)) (=> (IsWearingMuzzle r) (IsRacing s t))))) (and (forall ((u BoundSet)) (forall ((w BoundSet)) (forall ((v BoundSet)) (=> (IsRacing u v) (IsWearingMuzzle w))))) (and (forall ((z BoundSet)) (forall ((x BoundSet)) (forall ((y BoundSet)) (=> (IsRunningAroundTrack x) (IsRacing y z))))) (=> (IsRacing { |) (IsRunningAroundTrack })))))))))) (exists ((d BoundSet)) (exists ((e BoundSet)) (IsRacing d e))))))
(check-sat)
(get-model)