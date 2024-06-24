#!/bin/bash

crds=$(kubectl get crds -o jsonpath='{range .items[*]}{.metadata.name}{"\n"}{end}' | grep 'rds.aws.upbound.io')

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
filesV1Beta1=$(find ./temp -type f -name "*v1beta1*" | sed 's|.*/||')
filesV1Beta2=$(find ./temp -type f -name "*v1beta2*" | sed 's|.*/||')

rm -rf v1beta1
mkdir -p v1beta1
rm -rf v1beta2
mkdir -p v1beta2

for file in $filesV1Beta1; do
    mv ./temp/${file} ./v1beta1/${file}
done

for file in $filesV1Beta2; do
    mv ./temp/${file} ./v1beta2/${file}
done

rm -rf temp
rm -rf ./crds.yaml

kcl fmt ./v1beta1
kcl fmt ./v1beta2