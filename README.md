This is the initial conceptions of a centralized codebase to standardize a pipeline to transform 7T T2 ex vivo MRI's to FLASH space.

Dependencies for this pipeline include the following:
- SimpleITK
- c3d
- greedy
  
Order of operations:
1. First run reorient_secondary.py to generate FLASH reslice images (credit: Paul Yushkevich)
```
python reorient_secondary.py \
  -primary_original C:/PATH/TO/PROJECT/INDD123456N/123456N.nii.gz
  -primary_reorient C:/PATH/TO/PROJECT/INDD123456N/123456N_reorient.nii.gz
  -secondary_original C:/PATH/TO/PROJECT/INDD123456N/123456N_e2_FLASH.nii.gz
  -output C:/PATH/TO/PROJECT/INDD123456N/123456N_flash_reorient.nii.gz
```
2. Then run sh script to generate FLASH reslice image, and corresponding cortical dots file in FLASH space
```
bash flash_reslice_flash_dots.sh C:/PATH/TO/PROJECT 123456N
```


These scripts can be used in batch, with the bash script expecting the following file structure (using ID 123456 as an example INDD, and N as an example hemisphere denoter):

![image](https://github.com/user-attachments/assets/decef3e8-8be3-4037-8fc5-72b5b9efd216)


