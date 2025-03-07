(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(set-option :finite-model-find true)
(declare-fun IsLargestExporterOfRedMeat (BoundSet) Bool)
(declare-fun HoldsCattle (BoundSet) Bool)
(declare-fun SuspendsImportsOfBeefFrom (BoundSet BoundSet) Bool)
(declare-fun HasAbscesses (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((a BoundSet)) (and (IsLargestExporterOfRedMeat a) (HoldsCattle a))) (exists ((d BoundSet)) (exists ((a BoundSet)) (exists ((h BoundSet)) (exists ((g BoundSet)) (and (SuspendsImportsOfBeefFrom d a) (HasAbscesses g h)))))))))
(check-sat)
(get-model)