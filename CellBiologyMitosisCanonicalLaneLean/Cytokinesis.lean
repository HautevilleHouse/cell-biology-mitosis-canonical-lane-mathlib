import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CytokinesisPackage where
  actomyosinRingAssembly : Prop
  cleavageFurrowIngression : Prop
  midbodyFormation : Prop
  abscission : Prop
  contractileRingRegulation : Prop

structure CytokinesisEvidence (C : CytokinesisPackage) where
  actomyosinRingAssemblyClosed : C.actomyosinRingAssembly
  cleavageFurrowIngressionClosed : C.cleavageFurrowIngression
  midbodyFormationClosed : C.midbodyFormation
  abscissionClosed : C.abscission
  contractileRingRegulationClosed : C.contractileRingRegulation

def CytokinesisClosed (C : CytokinesisPackage) : Prop :=
  C.actomyosinRingAssembly ∧ C.cleavageFurrowIngression ∧ C.midbodyFormation ∧ C.abscission ∧ C.contractileRingRegulation

theorem cytokinesis_closed_from_evidence (C : CytokinesisPackage) (E : CytokinesisEvidence C) : CytokinesisClosed C := by
  exact And.intro E.actomyosinRingAssemblyClosed
    (And.intro E.cleavageFurrowIngressionClosed
      (And.intro E.midbodyFormationClosed
        (And.intro E.abscissionClosed E.contractileRingRegulationClosed)))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse