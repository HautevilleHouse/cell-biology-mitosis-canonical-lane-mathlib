import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure SpindleAssemblyPackage where
  centrosomeDuplication : Prop
  microtubuleNucleation : Prop
  bipolarSpindleFormation : Prop
  spindlePoleOrganization : Prop
  microtubuleKinetics : Prop

structure SpindleAssemblyEvidence (S : SpindleAssemblyPackage) where
  centrosomeDuplicationClosed : S.centrosomeDuplication
  microtubuleNucleationClosed : S.microtubuleNucleation
  bipolarSpindleFormationClosed : S.bipolarSpindleFormation
  spindlePoleOrganizationClosed : S.spindlePoleOrganization
  microtubuleKineticsClosed : S.microtubuleKinetics

def SpindleAssemblyClosed (S : SpindleAssemblyPackage) : Prop :=
  S.centrosomeDuplication ∧ S.microtubuleNucleation ∧
  S.bipolarSpindleFormation ∧ S.spindlePoleOrganization ∧ S.microtubuleKinetics

theorem spindle_assembly_closed_from_evidence (S : SpindleAssemblyPackage) (E : SpindleAssemblyEvidence S) :
    SpindleAssemblyClosed S := by
  exact And.intro E.centrosomeDuplicationClosed
    (And.intro E.microtubuleNucleationClosed
      (And.intro E.bipolarSpindleFormationClosed
        (And.intro E.spindlePoleOrganizationClosed E.microtubuleKineticsClosed)))

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse