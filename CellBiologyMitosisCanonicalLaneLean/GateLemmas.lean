import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMitosisCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse