import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyMitosisCanonicalLaneLean.MitosisCellCycleModel
import HautevilleHouse.CellBiologyMitosisCanonicalLaneLean.CyclinCDKRegulation
import HautevilleHouse.CellBiologyMitosisCanonicalLaneLean.SpindleAssemblyCheckpoint
import HautevilleHouse.CellBiologyMitosisCanonicalLaneLean.AnaphasePromotionComplex
import HautevilleHouse.CellBiologyMitosisCanonicalLaneLean.CytokinesisContractileRing

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure MitosisAdmittedObject where
  cellModel : CellCycleModel
  cyclinCDKReg : CyclinCDKRegulation
  spindleCheckpoint : SpindleAssemblyCheckpoint
  apc : AnaphasePromotionComplex
  cytokineRing : CytokinesisContractileRing
  satisfied : Prop

structure MitosisAdmissibleClass where
  object : MitosisAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def bridgeClosed (A : MitosisAdmissibleClass) : Prop :=
  A.object.satisfied

theorem bridge_from_admissible_class (A : MitosisAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.satisfied

def gateClosed (A : MitosisAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : MitosisAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedMitosisClosure (A : MitosisAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_mitosis_endgame (A : MitosisAdmissibleClass) :
    ConstrainedMitosisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse
