import EmbeddingsImmersionsPlTopologyCanonicalLaneLean.PLTopologyObjects

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure SmaleHirschPackage (M N : PLManifold) where
  immersionExists : Prop
  hPrincipleHolds : Prop
  formalImmersionCondition : Prop
  homotopyEquivalence : Prop
  regularHomotopy : Prop

structure SmaleHirschEvidence {M N : PLManifold} (S : SmaleHirschPackage M N) where
  immersionExistsClosed : S.immersionExists
  hPrincipleHoldsClosed : S.hPrincipleHolds
  formalImmersionConditionClosed : S.formalImmersionCondition
  homotopyEquivalenceClosed : S.homotopyEquivalence
  regularHomotopyClosed : S.regularHomotopy

def SmaleHirschClosed {M N : PLManifold} (S : SmaleHirschPackage M N) : Prop :=
  S.immersionExists ∧ S.hPrincipleHolds ∧ S.formalImmersionCondition ∧ S.homotopyEquivalence ∧ S.regularHomotopy

theorem smale_hirsch_closed_from_evidence
    {M N : PLManifold} (S : SmaleHirschPackage M N) (E : SmaleHirschEvidence S) :
    SmaleHirschClosed S := by
  exact And.intro E.immersionExistsClosed
    (And.intro E.hPrincipleHoldsClosed
      (And.intro E.formalImmersionConditionClosed
        (And.intro E.homotopyEquivalenceClosed E.regularHomotopyClosed)))

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse
