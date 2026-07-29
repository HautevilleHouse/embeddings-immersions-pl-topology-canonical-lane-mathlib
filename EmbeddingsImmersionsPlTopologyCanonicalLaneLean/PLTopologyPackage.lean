import EmbeddingsImmersionsPlTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure PLTopologyPackage where
  plManifold : Type u
  combinatorialTriangulation : Prop
  hauptvermutung : Prop
  plInvarianceOfEmbedding : Prop

structure PLTopologyEvidence (P : PLTopologyPackage) where
  combinatorialTriangulationClosed : P.combinatorialTriangulation
  hauptvermutungClosed : P.hauptvermutung
  plInvarianceOfEmbeddingClosed : P.plInvarianceOfEmbedding

def PLTopologyClosed (P : PLTopologyPackage) : Prop :=
  P.combinatorialTriangulation ∧ P.hauptvermutung ∧ P.plInvarianceOfEmbedding

theorem pl_topology_closed_from_evidence (P : PLTopologyPackage) (E : PLTopologyEvidence P) :
    PLTopologyClosed P := by
  exact And.intro E.combinatorialTriangulationClosed
    (And.intro E.hauptvermutungClosed E.plInvarianceOfEmbeddingClosed)

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse