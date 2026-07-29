import EmbeddingsImmersionsPlTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure EmbeddingPackage where
  sourceDimension : ℕ
  targetDimension : ℕ
  whitneyEmbeddingTheorem : Prop
  embeddingTrick : Prop
  isotopyExtension : Prop

structure EmbeddingEvidence (E : EmbeddingPackage) where
  whitneyEmbeddingTheoremClosed : E.whitneyEmbeddingTheorem
  embeddingTrickClosed : E.embeddingTrick
  isotopyExtensionClosed : E.isotopyExtension

def EmbeddingClosed (E : EmbeddingPackage) : Prop :=
  E.whitneyEmbeddingTheorem ∧ E.embeddingTrick ∧ E.isotopyExtension

theorem embedding_closed_from_evidence (E : EmbeddingPackage) (Ev : EmbeddingEvidence E) :
    EmbeddingClosed E := by
  exact And.intro Ev.whitneyEmbeddingTheoremClosed
    (And.intro Ev.embeddingTrickClosed Ev.isotopyExtensionClosed)

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse