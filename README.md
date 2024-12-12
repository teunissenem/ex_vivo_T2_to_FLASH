This is the initial conceptions of a centralized codebase to standardize a pipeline to transform 7T T2 ex vivo MRI's to FLASH space.

Dependencies for this pipeline include the following:
- SimpleITK
- c3d
- greedy

These scripts can be used in batch, with the bash script expecting the following file structure:

INDD123456N
 *FOLLOWING SCANS MUST BE INCLUDED*
 -123456N.nii.gz (original T2)
 -123456N_reorient.nii.gz (edited header information ex. SRP--> IRA)
 -123456N_reslice.nii.gz (manually adjusted image to AC/PC align the image; same header info as reorient)
 -123456N_reslice.mat (contains the affine transformation matrix to convert reorient --> reslice)
 -123456N_cortexdots_final.nii.gz (cortical dots segmentation file - includes dots placed throughout the brain image, labeling different cortical regions) (19Dots_LabelDescription.txt contains the dot segmentation labels for viewing in ITK-SNAP)
 -123456N_e2_FLASH.nii.gz (original FLASH image)
 -*GENERATED FILES BY REPO*
 -123456N_flash_reorient.nii.gz (FLASH image that matches header as T2 reorient image - 123456N_reorient.nii.gz --> generated by reorient_secondary.py)
 -123456N_flash_reslice.nii.gz (FLASH image that is resliced to the match T2 reslice image. --> generated by flash_reslice_flash_dots.sh, which resamples the T2 by 200% and applies the same T2 affine reslice transformation matrix to the FLASH reorient image)
