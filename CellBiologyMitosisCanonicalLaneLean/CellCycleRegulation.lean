import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CellCycleRegulationPackage where
  cyclinConcentration : Type u
  cdkActivity : Type v
  CheckpointControls : Prop
  restrictionPoint : Prop
  growthFactorDependence : Prop

structure CellCycleRegulationEvidence (C : CellCycleRegulationPackage) where
  checkpointControlsClosed : C.CheckpointControls
  restrictionPointClosed : C.restrictionPoint
  growthFactorDependenceClosed : C.growthFactorDependence

def CellCycleRegulationClosed (C : CellCycleRegulationPackage) : Prop :=
  C.CheckpointControls ∧ C.restrictionPoint ∧ C.growthFactorDependence

theorem cell_cycle_regulation_closed_from_evidence (C : CellCycleRegulationPackage) (E : CellCycleRegulationEvidence C) :
    CellCycleRegulationClosed C := by
  exact And.intro E.checkpointControlsClosed (And.intro E.restrictionPointClosed E.growthFactorDependenceClosed)

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse