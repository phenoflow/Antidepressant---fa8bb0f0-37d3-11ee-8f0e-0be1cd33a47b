cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  antidepressant---primary:
    run: antidepressant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  antidepressant-amitriptyline---primary:
    run: antidepressant-amitriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: antidepressant---primary/output
  antidepressant-butriptyline---primary:
    run: antidepressant-butriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: antidepressant-amitriptyline---primary/output
  antidepressant-imipramine---primary:
    run: antidepressant-imipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: antidepressant-butriptyline---primary/output
  antidepressant-desipramine---primary:
    run: antidepressant-desipramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antidepressant-imipramine---primary/output
  antidepressant-hydrochloride---primary:
    run: antidepressant-hydrochloride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: antidepressant-desipramine---primary/output
  antidepressant-doxepin---primary:
    run: antidepressant-doxepin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: antidepressant-hydrochloride---primary/output
  antidepressant-iprindole---primary:
    run: antidepressant-iprindole---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: antidepressant-doxepin---primary/output
  antidepressant-lofepramine---primary:
    run: antidepressant-lofepramine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: antidepressant-iprindole---primary/output
  antidepressant-maprotiline---primary:
    run: antidepressant-maprotiline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: antidepressant-lofepramine---primary/output
  antidepressant-nortriptyline---primary:
    run: antidepressant-nortriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: antidepressant-maprotiline---primary/output
  antidepressant-protriptyline---primary:
    run: antidepressant-protriptyline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: antidepressant-nortriptyline---primary/output
  antidepressant-viloxazine---primary:
    run: antidepressant-viloxazine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: antidepressant-protriptyline---primary/output
  antidepressant-amoxapine---primary:
    run: antidepressant-amoxapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: antidepressant-viloxazine---primary/output
  antidepressant-phenelzine---primary:
    run: antidepressant-phenelzine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: antidepressant-amoxapine---primary/output
  iproniazid-antidepressant---primary:
    run: iproniazid-antidepressant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: antidepressant-phenelzine---primary/output
  isocarboxazid-antidepressant---primary:
    run: isocarboxazid-antidepressant---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: iproniazid-antidepressant---primary/output
  antidepressant-tranylcypromine---primary:
    run: antidepressant-tranylcypromine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: isocarboxazid-antidepressant---primary/output
  antidepressant-moclobemide---primary:
    run: antidepressant-moclobemide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: antidepressant-tranylcypromine---primary/output
  antidepressant-tryptophan---primary:
    run: antidepressant-tryptophan---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: antidepressant-moclobemide---primary/output
  antidepressant-venlafaxine---primary:
    run: antidepressant-venlafaxine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: antidepressant-tryptophan---primary/output
  antidepressant-nefazodone---primary:
    run: antidepressant-nefazodone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: antidepressant-venlafaxine---primary/output
  antidepressant-citalopram---primary:
    run: antidepressant-citalopram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: antidepressant-nefazodone---primary/output
  antidepressant-reboxetine---primary:
    run: antidepressant-reboxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: antidepressant-citalopram---primary/output
  antidepressant-mirtazapine---primary:
    run: antidepressant-mirtazapine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: antidepressant-reboxetine---primary/output
  antidepressant-escitalopram---primary:
    run: antidepressant-escitalopram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: antidepressant-mirtazapine---primary/output
  antidepressant-agomelatine---primary:
    run: antidepressant-agomelatine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: antidepressant-escitalopram---primary/output
  antidepressant-vortioxetine---primary:
    run: antidepressant-vortioxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: antidepressant-agomelatine---primary/output
  antidepressant-enuresis---primary:
    run: antidepressant-enuresis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: antidepressant-vortioxetine---primary/output
  antidepressant-duloxetine---primary:
    run: antidepressant-duloxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: antidepressant-enuresis---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: antidepressant-duloxetine---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
