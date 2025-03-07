(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsInWhiteShirt (BoundSet) Bool)
(declare-fun SpeaksIntoMicrophone (BoundSet) Bool)
(declare-fun IsMakingSpeech (BoundSet) Bool)
(declare-fun IsInFrontOfCrowd (BoundSet) Bool)
(assert (not (=> (and (exists ((a BoundSet)) (and (IsInWhiteShirt a) (SpeaksIntoMicrophone a))) (and (forall ((e BoundSet)) (=> (IsInWhiteShirt e) (IsMakingSpeech e))) (and (forall ((f BoundSet)) (=> (IsMakingSpeech f) (IsInWhiteShirt f))) (and (forall ((g BoundSet)) (=> (IsInFrontOfCrowd g) (IsInWhiteShirt g))) (and (forall ((h BoundSet)) (=> (SpeaksIntoMicrophone h) (IsInWhiteShirt h))) (and (forall ((i BoundSet)) (=> (SpeaksIntoMicrophone i) (IsMakingSpeech i))) (and (forall ((j BoundSet)) (=> (IsMakingSpeech j) (SpeaksIntoMicrophone j))) (forall ((k BoundSet)) (=> (IsInFrontOfCrowd k) (SpeaksIntoMicrophone k)))))))))) (exists ((a BoundSet)) (and (IsInWhiteShirt a) (and (IsMakingSpeech a) (IsInFrontOfCrowd a)))))))
(check-sat)
(get-model)