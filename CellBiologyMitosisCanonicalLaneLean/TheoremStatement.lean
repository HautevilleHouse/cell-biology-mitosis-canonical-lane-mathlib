import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyMitosisCanonicalLaneLean

structure MitosisAdmittedObject where
  cellCyclePhase : Type
  checkpointMechanism : Prop
  spindleAssembly : Prop
  chromosomeSegregation : Prop
  cytokinesis : Prop
  conclusion : checkpointMechanism ∧ spindleAssembly ∧ chromosomeSegregation ∧ cytokinesis

def MitosisWitnessClosed (O : MitosisAdmittedObject) : Prop :=
  O.checkpointMechanism ∧ O.spindleAssembly ∧ O.chromosomeSegregation ∧ O.cytokinesis

theorem mitosis_witness_closed_from_object (O : MitosisAdmittedObject) :
    MitosisWitnessClosed O := O.conclusion

end CellBiologyMitosisCanonicalLaneLean
end HautevilleHouse