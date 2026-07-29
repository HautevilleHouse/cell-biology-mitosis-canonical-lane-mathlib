import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CellCycleRegulationPackage where
  cyclinDependentKinaseRegulation : Prop
  p53CheckpointActivation : Prop
  dnaDamageRepair : Prop
  g2MTransition : Prop
  mitoticExit : Prop

structure CellCycleRegulationEvidence (R : CellCycleRegulationPackage) where
  cyclinDependentKinaseRegulationClosed : R.cyclinDependentKinaseRegulation
  p53CheckpointActivationClosed : R.p53CheckpointActivation
  dnaDamageRepairClosed : R.dnaDamageRepair
  g2MTransitionClosed : R.g2MTransition
  mitoticExitClosed : R.mitoticExit

def CellCycleRegulationClosed (R : CellCycleRegulationPackage) : Prop :=
  R.cyclinDependentKinaseRegulation ∧ R.p53CheckpointActivation ∧ R.dnaDamageRepair ∧ R.g2MTransition ∧ R.mitoticExit

theorem cell_cycle_regulation_closed_from_evidence (R : CellCycleRegulationPackage) (E : CellCycleRegulationEvidence R) : CellCycleRegulationClosed R := by
  exact And.intro E.cyclinDependentKinaseRegulationClosed (And.intro E.p53CheckpointActivationClosed (And.intro E.dnaDamageRepairClosed (And.intro E.g2MTransitionClosed E.mitoticExitClosed)))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse