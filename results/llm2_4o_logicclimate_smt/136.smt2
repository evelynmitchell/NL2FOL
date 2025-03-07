(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInBlack (BoundSet) Bool)
(declare-fun ReviewsMessage (BoundSet) Bool)
(declare-fun WalksToWork (BoundSet) Bool)
(declare-fun HasJob (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInBlack a) (and (ReviewsMessage a) (WalksToWork a)))) (and (forall ((e BoundSet)) (=> (HasJob e) (IsInBlack e))) (and (forall ((f BoundSet)) (=> (HasJob f) (ReviewsMessage f))) (and (forall ((g BoundSet)) (=> (WalksToWork g) (IsInBlack g))) (forall ((h BoundSet)) (=> (HasJob h) (WalksToWork h))))))) (exists ((a BoundSet)) (and (IsInBlack a) (HasJob a))))))
(check-sat)
(get-model)