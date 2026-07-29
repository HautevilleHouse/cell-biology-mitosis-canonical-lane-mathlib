import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure CellCyclePhasesPackage where
  g1Phase : Prop
  sPhase : Prop
  g2Phase : Prop
  mPhase : Prop
  cyclinRegulation : Prop
  checkpointControl : Prop

structure CellCyclePhasesEvidence (C : CellCyclePhasesPackage) where
  g1PhaseClosed : C.g1Phase
  sPhaseClosed : C.sPhase
  g2PhaseClosed : C.g2Phase
  mPhaseClosed : C.mPhase
  cyclinRegulationClosed : C.cyclinRegulation
  checkpointControlClosed : C.checkpointControl

def CellCyclePhasesClosed (C : CellCyclePhasesPackage) : Prop :=
  C.g1Phase ∧ C.sPhase ∧ C.g2Phase ∧ C.mPhase ∧ C.cyclinRegulation ∧ C.checkpointControl

theorem cell_cycle_phases_closed_from_evidence (C : CellCyclePhasesPackage) (E : CellCyclePhasesEvidence C) : CellCyclePhasesClosed C := by
  exact And.intro E.g1PhaseClosed
    (And.intro E.sPhaseClosed
      (And.intro E.g2PhaseClosed
        (And.intro E.mPhaseClosed
          (And.intro E.cyclinRegulationClosed E.checkpointControlClosed))))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse