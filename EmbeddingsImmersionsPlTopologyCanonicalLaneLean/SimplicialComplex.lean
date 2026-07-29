import HautevilleHouse.EmbeddingsImmersionsPlTopologyCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EmbeddingsImmersionsPlTopologyCanonicalLaneLean

structure SimplicialComplex where
  vertices : Type
  simplices : List (List vertices)
  faceMaps : Prop
  boundaryOperator : Prop
  plTopology : Prop
  homotopyType : Prop

structure SimplicialComplexEvidence (K : SimplicialComplex) where
  faceMapsClosed : K.faceMaps
  boundaryOperatorClosed : K.boundaryOperator
  plTopologyClosed : K.plTopology
  homotopyTypeClosed : K.homotopyType

def SimplicialComplexClosed (K : SimplicialComplex) : Prop :=
  K.faceMaps ∧ K.boundaryOperator ∧ K.plTopology ∧ K.homotopyType

theorem simplicial_complex_closed_from_evidence (K : SimplicialComplex) (E : SimplicialComplexEvidence K) :
    SimplicialComplexClosed K := by
  exact And.intro E.faceMapsClosed (And.intro E.boundaryOperatorClosed (And.intro E.plTopologyClosed E.homotopyTypeClosed))

structure PLAdmittedObject where
  space : SimplicialComplex
  closedManifold : Prop
  plStructure : Prop
  sphereModel : Type
  sphereTopology : TopologicalSpace sphereModel
  plHomeomorphicToSphere : Prop
  conclusion : plHomeomorphicToSphere

def PLWitnessClosed (O : PLAdmittedObject) : Prop :=
  O.plHomeomorphicToSphere

end EmbeddingsImmersionsPlTopologyCanonicalLaneLean
end HautevilleHouse