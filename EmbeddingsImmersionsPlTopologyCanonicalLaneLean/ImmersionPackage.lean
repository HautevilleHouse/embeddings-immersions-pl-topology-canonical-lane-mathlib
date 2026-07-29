import EmbeddingsImmersionsPlTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure ImmersionPackage where
  sourceDimension : ℕ
  targetDimension : ℕ
  immersionExists : Prop
  regularHomotopyConnected : Prop
  smaleHirschTheorem : Prop

structure ImmersionEvidence (I : ImmersionPackage) where
  immersionExistsClosed : I.immersionExists
  regularHomotopyConnectedClosed : I.regularHomotopyConnected
  smaleHirschTheoremClosed : I.smaleHirschTheorem

def ImmersionClosed (I : ImmersionPackage) : Prop :=
  I.immersionExists ∧ I.regularHomotopyConnected ∧ I.smaleHirschTheorem

theorem immersion_closed_from_evidence (I : ImmersionPackage) (E : ImmersionEvidence I) :
    ImmersionClosed I := by
  exact And.intro E.immersionExistsClosed
    (And.intro E.regularHomotopyConnectedClosed E.smaleHirschTheoremClosed)

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse