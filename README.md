This is the initial conceptions of a centralized codebase to standardize a pipeline to transform 7T T2 ex vivo MRI's to FLASH space.

Dependencies for this pipeline include the following:
- SimpleITK
- c3d
- greedy

These scripts can be used in batch, with the bash script expecting the following file structure:
![{0E6CEE0D-CBF6-4102-9236-54404AC1B40C}](https://github.com/user-attachments/assets/3a882f85-f25e-4b95-ad7d-198b4e69098b)

*Order of operations:
-First run reorient_secondary.py to generate FLASH reslice images
-Then run sh script to generate FLASH reslice image, and corresponding cortical dots file in FLASH space
