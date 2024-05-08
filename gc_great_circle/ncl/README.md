# Running NCL within conda

## Conda
Create [new conda environment](https://www.ncl.ucar.edu/Download/conda.shtml)

```
conda create -n ncl_stable -c conda-forge ncl
```

Activate new environment

```
source activate ncl_stable
```

Run NCL script

```
ncl gc_aangle.ncl
```
