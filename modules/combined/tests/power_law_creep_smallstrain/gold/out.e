CDF      
      
len_string     !   len_line   Q   four      	time_step          num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1       num_side_ss1      
num_df_ss1        num_side_ss2      
num_df_ss2        num_side_ss3      
num_df_ss3        num_side_ss4      
num_df_ss4        num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_elem_var      num_info  b         api_version       @��R   version       @��R   floating_point_word_size            	file_size               title         out.e         /   
time_whole                            �l   	eb_status                             @   eb_prop1               name      ID              D   	ns_status                             H   ns_prop1               name      ID              X   	ss_status         	                    h   ss_prop1      	         name      ID              x   coordx                      @      �   coordy                      @      �   coordz                      @         
coor_names                          d      H   eb_names                        $      �   ns_names                        �      �   ss_names      	                  �      T   connect1      
            	elem_type         HEX8                 �   elem_num_map                          �   elem_ss1                          �   side_ss1                              dist_fact_ss1                                 elem_ss2                          $   side_ss2                          (   dist_fact_ss2                              ,   elem_ss3                          L   side_ss3                          P   dist_fact_ss3                              T   elem_ss4                          t   side_ss4                          x   dist_fact_ss4                              |   node_ns1                          �   node_ns2                          �   node_ns3                          �   node_ns4                          �   vals_nod_var1                          @      �t   vals_nod_var2                          @      ��   vals_nod_var3                          @      ��   vals_nod_var4                          @      �4   vals_nod_var5                          @      �t   vals_nod_var6                          @      ��   vals_nod_var7                          @      ��   vals_nod_var8                          @      �4   name_nod_var                             �   name_elem_var                           �      �   vals_elem_var1eb1            
                    �t   vals_elem_var2eb1            
                    �|   vals_elem_var3eb1            
                    ��   vals_elem_var4eb1            
                    ��   info_records                      p      h                                                      ��      ��      ��      ��      ?�      ?�      ?�      ?�      ��      ��      ?�      ?�      ��      ��      ?�      ?�      ?�      ��      ��      ?�      ?�      ��      ��      ?�                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         stress_yy                        creep_strain_xx                  creep_strain_yy                  creep_strain_zz                  disp_x                           disp_y                           disp_z                           temp                             stress_yy                        creep_strain_xx                  creep_strain_yy                  creep_strain_zz                  ####################                                                             # Created by MOOSE #                                                             ####################                                                                                                                                              [Mesh]                                                          @�@     @�@     @  dim                            = 3   @�@                                         file                           = 1x1x1cube.e                                     second_order                   = 0                                               uniform_refine                 = 0                                             []                                                                                                                                                                [Variables]                                                                        active                         = 'disp_x disp_y disp_z temp '                                                                                                     [./disp_x]                                                                         family                       = LAGRANGE                                          initial_condition            = 0                                                 initial_from_file_timestep   = 2                                                 order                        = FIRST                                             scaling                      = 1                                               [../]                                                                                                                                                             [./disp_y]                                                                         family                       = LAGRANGE                                          initial_condition            = 0                                                 initial_from_file_timestep   = 2                                                 order                        = FIRST                                             scaling                      = 1                                               [../]                                                                                                                                                             [./disp_z]                                                                         family                       = LAGRANGE                                          initial_condition            = 0                                                 initial_from_file_timestep   = 2                                                 order                        = FIRST                                             scaling                      = 1                                               [../]                                                                                                                                                             [./temp]                                                                           family                       = LAGRANGE                                          initial_condition            = 1000                                              initial_from_file_timestep   = 2                                                 order                        = FIRST                                             scaling                      = 1                                               [../]                                                                          []                                                                                                                                                                [Preconditioning]                                                                []                                                                                                                                                                [AuxVariables]                                                                     active                         = 'stress_yy creep_strain_xx creep_strain_yy...  creep_strain_zz '                                                                                                                                                  [./stress_yy]                                                                      family                       = MONOMIAL                                          initial_condition            = 0                                                 initial_from_file_timestep   = 2                                                 order                        = CONSTANT                                          scaling                      = 1                                               [../]                                                                                                                                                             [./creep_strain_xx]                                                                family                       = MONOMIAL                                          initial_condition            = 0                                                 initial_from_file_timestep   = 2                                                 order                        = CONSTANT                                          scaling                      = 1                                               [../]                                                                                                                                                             [./creep_strain_yy]                                                                family                       = MONOMIAL                                          initial_condition            = 0                                                 initial_from_file_timestep   = 2                                                 order                        = CONSTANT                                          scaling                      = 1                                               [../]                                                                                                                                                             [./creep_strain_zz]                                                                family                       = MONOMIAL                                          initial_condition            = 0                                                 initial_from_file_timestep   = 2                                                 order                        = CONSTANT                                          scaling                      = 1                                               [../]                                                                          []                                                                                                                                                                [Functions]                                                                        active                         = 'top_pull '                                                                                                                      [./top_pull]                                                                       type                         = PiecewiseLinear                                   scale_factor                 = 1                                                 x                            = '0 1 '                                            y                            = '1 1 '                                          [../]                                                                          []                                                                                                                                                                [Kernels]                                                                          active                         = 'solid_x solid_y solid_z solid_x_ie solid_... y_ie solid_z_ie heat heat_ie '                                                                                                                                      [./solid_x]                                                                        type                         = StressDivergence                                  component                    = 0                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = disp_x                                          [../]                                                                                                                                                             [./solid_y]                                                                        type                         = StressDivergence                                  component                    = 1                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = disp_y                                          [../]                                                                                                                                                             [./solid_z]                                                                        type                         = StressDivergence                                  component                    = 2                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = disp_z                                          [../]                                                                                                                                                             [./solid_x_ie]                                                                     type                         = SolidMechImplicitEuler                            start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = disp_x                                          [../]                                                                                                                                                             [./solid_y_ie]                                                                     type                         = SolidMechImplicitEuler                            start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = disp_y                                          [../]                                                                                                                                                             [./solid_z_ie]                                                                     type                         = SolidMechImplicitEuler                            start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = disp_z                                          [../]                                                                                                                                                             [./heat]                                                                           type                         = HeatConduction                                    start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = temp                                            [../]                                                                                                                                                             [./heat_ie]                                                                        type                         = HeatConductionImplicitEuler                       start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = temp                                            [../]                                                                          []                                                                                                                                                                [AuxKernels]                                                                       active                         = 'stress_yy creep_strain_xx creep_strain_yy...  creep_strain_zz '                                                                                                                                                  [./stress_yy]                                                                      type                         = StressAux                                         index                        = 1                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = stress_yy                                       [../]                                                                                                                                                             [./creep_strain_xx]                                                                type                         = CreepStrainAux                                    index                        = 0                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = creep_strain_xx                                 [../]                                                                                                                                                             [./creep_strain_yy]                                                                type                         = CreepStrainAux                                    index                        = 1                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = creep_strain_yy                                 [../]                                                                                                                                                             [./creep_strain_zz]                                                                type                         = CreepStrainAux                                    index                        = 2                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = creep_strain_zz                                 [../]                                                                          []                                                                                                                                                                [BCs]                                                                              active                         = 'u_top_pull u_bottom_fix u_yz_fix u_xy_fix...  temp_top_fix temp_bottom_fix '                                                                                                                                     [./u_top_pull]                                                                     type                         = PressureBC                                        boundary                     = '5 '                                              component                    = 1                                                 factor                       = -1e+07                                            function                     = top_pull                                          start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      variable                     = disp_y                                          [../]                                                                                                                                                             [./u_bottom_fix]                                                                   type                         = DirichletBC                                       boundary                     = '3 '                                              start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      value                        = 0                                                 variable                     = disp_y                                          [../]                                                                                                                                                             [./u_yz_fix]                                                                       type                         = DirichletBC                                       boundary                     = '4 '                                              start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      value                        = 0                                                 variable                     = disp_x                                          [../]                                                                                                                                                             [./u_xy_fix]                                                                       type                         = DirichletBC                                       boundary                     = '2 '                                              start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      value                        = 0                                                 variable                     = disp_z                                          [../]                                                                                                                                                             [./temp_top_fix]                                                                   type                         = DirichletBC                                       boundary                     = '5 '                                              start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      value                        = 1000                                              variable                     = temp                                            [../]                                                                                                                                                             [./temp_bottom_fix]                                                                type                         = DirichletBC                                       boundary                     = '3 '                                              start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      value                        = 1000                                              variable                     = temp                                            [../]                                                                          []                                                                                                                                                                [AuxBCs]                                                                         []                                                                                                                                                                [Materials]                                                                        active                         = 'creep thermal '                                                                                                                 [./creep]                                                                          type                         = PowerLawCreepMaterial                             activation_energy            = 300000                                            block                        = '1 '                                              coefficient                  = 1e-15                                             disp_x                       = 'disp_x '                                         disp_y                       = 'disp_y '                                         disp_z                       = 'disp_z '                                         exponent                     = 4                                                 gas_constant                 = 8.3143                                            max_its                      = 100                                               output_iteration_info        = 0                                                 poissons_ratio               = 0.3                                               start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      t_ref                        = 0                                                 temp                         = 'temp '                                           thermal_conductivity         = 0                                                 thermal_expansion            = 0                                                 tolerance                    = 1e-05                                             youngs_modulus               = 2e+11                                           [../]                                                                                                                                                             [./thermal]                                                                        type                         = HeatConduction                                    block                        = '1 '                                              density                      = 1                                                 specific_heat                = 1                                                 start_time                   = -1.79769e+308                                     stop_time                    = 1.79769e+308                                      thermal_conductivity         = 100                                             [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      auto_scaling                   = 0                                               l_abs_step_tol                 = -1                                              l_max_its                      = 100                                             l_tol                          = 1e-05                                           nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-06                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 100                                             nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-06                                           no_fe_reinit                   = 0                                               perf_log                       = 1                                               petsc_options                  = '-snes_mf_operator -ksp_monitor -snes_ksp_... ew '                                                                               petsc_options_iname            = '-snes_type -snes_ls -ksp_gmres_restart '       petsc_options_value            = 'ls basic 101 '                                 scheme                         = backward-euler                                  type                           = Transient                                       dt                             = 0.1                                             dtmax                          = 1e+30                                           dtmin                          = 0                                               end_time                       = 1                                               initial_mesh_rebalance         = 0                                               n_startup_steps                = 0                                               num_steps                      = 10                                              ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = 0                                               sync_times                     = '-1 '                                           trans_ss_check                 = 0                                             []                                                                                                                                                                [Postprocessors]                                                                 []                                                                                                                                                                [Output]                                                                           exodus                         = 1                                               file_base                      = out                                             gmv                            = 0                                               gnuplot_format                 = ps                                              interval                       = 1                                               output_displaced               = 0                                               output_initial                 = 1                                               postprocessor_csv              = 1                                               postprocessor_ensight          = 0                                               postprocessor_gnuplot          = 0                                               postprocessor_screen           = 1                                               print_linear_residuals         = 0                                               print_out_info                 = 0                                               tecplot                        = 0                                               tecplot_binary                 = 0                                               xda                            = 0                                             []                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         @�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@                                     ?�������Ac���/Ac���/Ac���/Ac���/Ac���/Ac���/Ac���/Ac���/��S�D�2��S�D�2��S�D�2��S�D�2��S�D�2��S�D�2��S�D�2��S�D�2?+�S�D�=?+�S�D�=?+�S�D�=?+�S�D�=?+�S�D�=?+�S�D�=?+�S�D�=?+�S�D�=��S�D�F��S�D�F��S�D�F��S�D�F��S�D�F��S�D�F��S�D�F��S�D�F                                �����c������+������s���ʤ��                ?1F�=��?1F�=�X�                ?1F�=�42?1F�=��������                ����������	                ���ʤ�@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac���/��S�D�2?+�S�D�=��S�D�F?ə�����Ac� 	��Ac� 	��Ac� 	��Ac� 	��Ac� 	��Ac� 	��Ac� 	��Ac� 	�ӿ+�T*���+�T*���+�T*���+�T*���+�T*���+�T*���+�T*���+�T*��?;�T*'�?;�T*'�?;�T*'�?;�T*'�?;�T*'�?;�T*'�?;�T*'�?;�T*'��+�T)���+�T)���+�T)���+�T)���+�T)���+�T)���+�T)���+�T)��                                �-���¸�-��?��-�����-���j#�                ??F0\zh�??F0k���                ??F0k�=[??F0~�$�-��?(b�                �-�����-��+U'                �-���%�4@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac� 	�ӿ+�T*��?;�T*'��+�T)��?�333334Ac���
�Ac���
�Ac���
�Ac���
�Ac���
�Ac���
�Ac���
�Ac���
п4���f�4���f�4���f�4���f�4���f�4���f�4���f�4���f?D�/�?D�/�?D�/�?D�/�?D�/�?D�/�?D�/�?D�/��4�v��4�v��4�v��4�v��4�v��4�v��4�v��4�v�                                �5�'��|�5�'���K�5�'�Co|�5�'�ـf                ?F��Ah�)?F��A�                ?F��A��o?F��;�U	�5�'�\��                �5�'���C�5�'����                �5�'�
��@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac���
п4���f?D�/��4�v�?ٙ�����Ac���9TAc���9TAc���9TAc���9TAc���9TAc���9TAc���9TAc���9T�;�T�DV�;�T�DV�;�T�DV�;�T�DV�;�T�DV�;�T�DV�;�T�DV�;�T�DV?K�T�u?K�T�u?K�T�u?K�T�u?K�T�u?K�T�u?K�T�u?K�T�u�;�T���;�T���;�T���;�T���;�T���;�T���;�T���;�T���                                �<���1�׿<���rsG�<�������<���
�0                ?M��+kT�?M��AS�<                ?M��@�X?M��;�."�<�����                �<���(dƿ<������                �<����z@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac���9T�;�T�DV?K�T�u�;�T���?�      Ac���C�Ac���C�Ac���C�Ac���C�Ac���C�Ac���C�Ac���C�Ac���C��A��~��A��~��A��~��A��~��A��~��A��~��A��~��A��~�?Q��bu�?Q��bu�?Q��bu�?Q��bu�?Q��bu�?Q��bu�?Q��bu�?Q��bu��A��FWb�A��FWb�A��FWb�A��FWb�A��FWb�A��FWb�A��FWb�A��FWb                                �A�hʹ��A�h�=�ϿA�hɤ��A�h��                ?RQK�?RQK�#H�                ?RQK��@K?RQK�#�A�h�0�2                �A�h�(�i�A�h�Wգ                �A�h��0�@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac���C��A��~�?Q��bu��A��FWb?�333333Ac���]sAc���]sAc���]sAc���]sAc���]sAc���]sAc���]sAc���]s�D�C�ÿD�C�ÿD�C�ÿD�C�ÿD�C�ÿD�C�ÿD�C�ÿD�C��?T�>��?T�>��?T�>��?T�>��?T�>��?T�>��?T�>��?T�>��D�9��D�9��D�9��D�9��D�9��D�9��D�9��D�9�                                �E}SK�jy�E}SYY��E}SMs�a�E}SI�TF                ?U�6 ٯ�?U�6&�n�                ?U�6&�Ѻ?U�6&��H�E}SY��                �E}SMbub�E}SJ�~d                �E}SJ�JD@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac���]s�D�C��?T�>��D�9�?�ffffffAc����WAc����WAc����WAc����WAc����WAc����WAc����WAc����W�Hi��ᮿHi��ᮿHi��ᮿHi��ᮿHi��ᮿHi��ᮿHi��ᮿHi���?Xi����?Xi����?Xi����?Xi����?Xi����?Xi����?Xi����?Xi����Hi���(�Hi���(�Hi���(�Hi���(�Hi���(�Hi���(�Hi���(�Hi���(                                �H�=�F��H�=��%��H�=�NѿH�=��d#                ?YQ ��2�?YQ ���                ?YQ ��@7?YQ ���H�=Ȑ��                �H�=��je�H�=ȕ�                �H�=�CR@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac����W�Hi���?Xi����Hi���(?陙����Ac��
~�Ac��
~�Ac��
~�Ac��
~�Ac��
~�Ac��
~�Ac��
~�Ac��
~��K�TdH¿K�TdH¿K�TdH¿K�TdH¿K�TdH¿K�TdH¿K�TdH¿K�TdH�?[�TI)�?[�TI)�?[�TI)�?[�TI)�?[�TI)�?[�TI)�?[�TI)�?[�TI)ſK�T.
ƿK�T.
ƿK�T.
ƿK�T.
ƿK�T.
ƿK�T.
ƿK�T.
ƿK�T.
�                                �L}(O�ۢ�L}(_�6¿L}(M" L�L}(Y�j                ?\�$zAd?\�.���                ?\�-GuD?\�-����L}(^���                �L}(P"u#�L}(L��B                �L}(YZ�6@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac��
~��K�TdH�?[�TI)ſK�T.
�?�������Ac�����Ac�����Ac�����Ac�����Ac�����Ac�����Ac�����Ac����ҿO>���2�O>���2�O>���2�O>���2�O>���2�O>���2�O>���2�O>���2?_>�kd�?_>�kd�?_>�kd�?_>�kd�?_>�kd�?_>�kd�?_>�kd�?_>�kdȿO>�B�`�O>�B�`�O>�B�`�O>�B�`�O>�B�`�O>�B�`�O>�B�`�O>�B�`                                �O�����O���J�O���a�O����                ?`(z����?`(z�RXu                ?`(z٪�?`(z�K(��O��ْ(                �O�٨&��O����                �O��[�@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac����ҿO>���2?_>�kdȿO>�B�`?�������Ac��ձ�Ac��ձ�Ac��ձ�Ac��ձ�Ac��ձ�Ac��ձ�Ac��ձ�Ac��ձ��Q��:�ؿQ��:�ؿQ��:�ؿQ��:�ؿQ��:�ؿQ��:�ؿQ��:�ؿQ��:��?a��+K?a��+K?a��+K?a��+K?a��+K?a��+K?a��+K?a��+K�Q���]�Q���]�Q���]�Q���]�Q���]�Q���]�Q���]�Q���]                                �Q�~�Q]�Q�~�^��Q�~�ݨ�Q�~��X�                ?a�p��?a�pl��                ?a�p��.?a�pS�c�Q�~���                �Q�~�Y�:�Q�~����                �Q�~���~@�@     @�@     @�@     @�@     @�@     @�@     @�@     @�@     Ac��ձ��Q��:��?a��+K�Q���]