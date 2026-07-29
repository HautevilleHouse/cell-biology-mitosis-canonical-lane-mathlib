import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CytokinesisPackage where
  contractileRingFormation : Prop
  actomyosinContraction : Prop
  membraneFurrowing : Prop
  abscission : Prop
  daughterCellSeparation : Prop

structure CytokinesisEvidence (C : CytokinesisPackage) where
  contractileRingFormationClosed : C.contractileRingFormation
  actomyosinContractionClosed : C.actomyosinContraction
  membraneFurrowingClosed : C.membraneFurrowing
  abscissionClosed : C.abscission
  daughterCellSeparationClosed : C.daughterCellSeparation

def CytokinesisClosed (C : CytokinesisPackage) : Prop :=
  C.contractileRingFormation ∧ C.actomyosinContraction ∧
  C.membraneFurrowing ∧ C.abscission ∧ C.daughterCellSeparation

theorem cytokinesis_closed_from_evidence (C : CytokinesisPackage) (E : CytokinesisEvidence C) :
    CytokinesisClosed C := by
  exact And.intro E.contractileRingFormationClosed
    (And.intro E.actomyosinContractionClosed
      (And.intro E.membraneFurrowingClosed
        (And.intro E.abscissionClosed E.daughterCellSeparationClosed)))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse