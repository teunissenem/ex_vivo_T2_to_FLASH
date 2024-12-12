dir=$1
ID=$2
INDDID=${dir}/INDD${ID}/${ID}

echo 'Reslicing' ${ID}'...'

# reslices FLASH Reorient to match T2 Reslice and creates FLASH Reslice
./c3d ${INDDID}_reslice.nii.gz \
    -resample 200% ${INDDID}_flash_reorient.nii.gz \
    -reslice-matrix ${INDDID}_reslice.mat \
    -o ${INDDID}_flash_reslice.nii.gz

# moves dots in T2 Reslice to FLASH Reslice space
./greedy -rf ${INDDID}_flash_reslice.nii.gz \
    -d 3 \
    -ri LABEL 0.2vox \
    -rm ${INDDID}_cortexdots_final.nii.gz ${INDDID}_cortexdots_final_flash.nii.gz \
    -r ${INDDID}_reslice.mat
