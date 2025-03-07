(set-logic ALL)
(set-option :produce-models true)
(declare-sort BoundSet 0)
(declare-sort UnboundSet 0)
(declare-fun IsDirty (BoundSet) Bool)
(declare-fun IsProblemFor (BoundSet BoundSet) Bool)
(declare-fun ( (Bool) Bool)
(declare-fun IsInsectBorne (BoundSet) Bool)
(declare-fun IsWarmer (BoundSet) Bool)
(declare-fun WillNotSurviveToExperience (BoundSet BoundSet) Bool)
(assert (not (=> (exists ((c BoundSet)) (exists ((b BoundSet)) (exists ((e BoundSet)) (exists ((f BoundSet)) (exists ((g BoundSet)) (exists ((a BoundSet)) (and (exists ((d BoundSet)) (( (and (IsDirty b) (IsProblemFor b e)))) (and (and (IsDirty c) (IsProblemFor c e)) (and (and (IsInsectBorne d) (IsProblemFor d e)) (and (IsProblemFor f a) (IsProblemFor g a))))))))))) (exists ((h BoundSet)) (exists ((a BoundSet)) (and (IsWarmer h) (WillNotSurviveToExperience a h)))))))
(check-sat)
(get-model)