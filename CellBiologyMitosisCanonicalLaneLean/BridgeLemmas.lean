import canonicalLaneMathlib.AdmissibleClass
import CellBiologyMitosisCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure MitosisAdmittedObject where
  space : Type
  isCell : Prop
  mitosisComplete : Prop
  conclusion : mitosisComplete

def MitosisWitnessClosed (O : MitosisAdmittedObject) : Prop :=
  O.mitosisComplete

def bridgeClosed (A : AdmissibleClass) : Prop :=
  MitosisWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse