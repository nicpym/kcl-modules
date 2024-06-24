#!/bin/bash

crds=$(kubectl get crds -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}' | grep 'opensearch.aws.upbound.io')

rm -rf ./crds.yaml

touch ./crds.yaml

for CRD in $crds
do
    echo "---" >> ./crds.yaml
    kubectl get crd $CRD -o yaml >> ./crds.yaml
done

rm -rf temp

kcl import -m crd -p temp ./crds.yaml

# Get all files in temp dir that have v1beta1 in name
files=$(find ./temp -type f -name "*v1beta1*" | sed 's|.*/||')

rm -rf v1beta1
mkdir -p v1beta1

# Move the files to v1beta1 folder
for file in $files; do
    mv ./temp/${file} ./v1beta1/${file}
done

rm -rf temp
rm -rf ./crds.yaml

kcl fmt ./v1beta1