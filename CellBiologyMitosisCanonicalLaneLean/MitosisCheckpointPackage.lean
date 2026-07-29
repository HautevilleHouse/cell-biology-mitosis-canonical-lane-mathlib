import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure MitosisCheckpointPackage where
  cyclinConcentration : ℝ
  cdkActivity : ℝ
  checkpointActivated : Prop
  mPhaseEntryCondition : Prop
  spindleAssemblyCheckpoint : Prop

structure MitosisCheckpointEvidence (C : MitosisCheckpointPackage) where
  cyclinConcentrationThresholdMet : C.cyclinConcentration ≥ 0.5
  cdkActivityThresholdMet : C.cdkActivity ≥ 0.7
  checkpointActivatedClosed : C.checkpointActivated
  mPhaseEntryConditionClosed : C.mPhaseEntryCondition
  spindleAssemblyCheckpointClosed : C.spindleAssemblyCheckpoint

def MitosisCheckpointClosed (C : MitosisCheckpointPackage) : Prop :=
  C.checkpointActivated ∧ C.mPhaseEntryCondition ∧ C.spindleAssemblyCheckpoint

theorem mitosis_checkpoint_closed_from_evidence (C : MitosisCheckpointPackage) (E : MitosisCheckpointEvidence C) : MitosisCheckpointClosed C := by
  exact And.intro E.checkpointActivatedClosed (And.intro E.mPhaseEntryConditionClosed E.spindleAssemblyCheckpointClosed)

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse