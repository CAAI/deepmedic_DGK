deepMedicRun -model /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/model/modelConfig_HNC_f1.cfg -train /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/trainHNC/trainConfigHNC_f1.cfg -load /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/outputHNC_f1/saved_models/trainSessionHNC1/deepMedicHNC_f0.trainSessionHNC1.initial.2022-04-18.06.32.17.601252.model.ckpt -dev cuda
deepMedicRun -model /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/model/modelConfig_HNC_f2.cfg -train /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/trainHNC/trainConfigHNC_f2.cfg -dev cuda
deepMedicRun -model /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/model/modelConfig_HNC_f3.cfg -train /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/trainHNC/trainConfigHNC_f3.cfg -dev cuda
deepMedicRun -model /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/model/modelConfig_HNC_f4.cfg -train /homes/kovacs/project_scripts/hnc_segmentation/deep_medic/deepmedic/examples/configFiles/deepMedic/trainHNC/trainConfigHNC_f4.cfg -dev cuda

