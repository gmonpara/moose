[Mesh]
  [mesh]
    type = GeneratedMeshGenerator
    dim = 1
    nx = 10
  []
[]

[Variables]
  [u]
    order = CONSTANT
    family = MONOMIAL
    fv = true
  []
[]

[FVKernels]
  [diff]
    type = FVDiffusion
    variable = u
    coeff = coeff
  []
[]

[Problem]
  kernel_coverage_check = off
[]

[Materials]
  [diff]
    type = ADGenericConstantMaterial
    prop_names = 'coeff'
    prop_values = '1'
  []
[]

[DiracKernels]
  [point_source1]
    type = ConstantPointSource
    variable = u
    value = 1.0
    point = '0.2 0 0'
  []
  [point_source2]
    type = ConstantPointSource
    variable = u
    value = -0.5
    point = '0.7 0 0'
  []
[]

[FVBCs]
  [left]
    type = FVDirichletBC
    variable = u
    boundary = left
    value = 0
  []
  [right]
    type = FVDirichletBC
    variable = u
    boundary = right
    value = 1
  []
[]

[Executioner]
  type = Steady
  solve_type = NEWTON
[]

[Outputs]
  file_base = 1d_fv_out
  exodus = true
[]
