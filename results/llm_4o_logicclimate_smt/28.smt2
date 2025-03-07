(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun PointTo (BoundSet BoundSet) Bool)
(declare-fun OccurIn (BoundSet BoundSet) Bool)
(declare-fun IsEvidenceOf (BoundSet BoundSet) Bool)
(declare-fun NotOccurring (BoundSet) Bool)
(declare-fun CausedBy (BoundSet BoundSet) Bool)
(declare-fun In (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (exists ((b BoundSet)) (exists ((d BoundSet)) (exists ((c BoundSet)) (and (PointTo c a) (and (OccurIn a b) (and (IsEvidenceOf a d) (NotOccurring d)))))))) (exists ((f BoundSet)) (exists ((e BoundSet)) (exists ((a BoundSet)) (exists ((g BoundSet)) (exists ((b BoundSet)) (and (OccurIn a b) (and (CausedBy a e) (and (CausedBy a f) (In g f))))))))))))
(check-sat)
(get-model)