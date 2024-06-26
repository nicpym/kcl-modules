"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1

schema Secret:
    """
    Secret is the Schema for the Secrets API. Provides a resource to manage AWS Secrets Manager secret metadata

    Attributes
    ----------
    apiVersion : str, default is "secretsmanager.aws.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "Secret", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : SecretsmanagerAwsUpboundIoV1beta1SecretSpec, default is Undefined, required
        spec
    status : SecretsmanagerAwsUpboundIoV1beta1SecretStatus, default is Undefined, optional
        status
    """
    apiVersion: "secretsmanager.aws.upbound.io/v1beta1" = "secretsmanager.aws.upbound.io/v1beta1"
    kind: "Secret" = "Secret"
    metadata?: v1.ObjectMeta
    spec: SecretsmanagerAwsUpboundIoV1beta1SecretSpec
    status?: SecretsmanagerAwsUpboundIoV1beta1SecretStatus

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpec:
    """
    SecretSpec defines the desired state of Secret

    Attributes
    ----------
    deletionPolicy : str, default is "Delete", optional
        DeletionPolicy specifies what will happen to the underlying external
        when this managed resource is deleted - either "Delete" or "Orphan" the
        external resource.
        This field is planned to be deprecated in favor of the ManagementPolicies
        field in a future release. Currently, both could be set independently and
        non-default values would be honored if the feature flag is enabled.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
    forProvider : SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProvider, default is Undefined, required
        for provider
    initProvider : SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProvider, default is Undefined, optional
        init provider
    managementPolicies : [str], default is ["*"], optional
        THIS IS A BETA FIELD. It is on by default but can be opted out
        through a Crossplane feature flag.
        ManagementPolicies specify the array of actions Crossplane is allowed to
        take on the managed and external resources.
        This field is planned to replace the DeletionPolicy field in a future
        release. Currently, both could be set independently and non-default
        values would be honored if the feature flag is enabled. If both are
        custom, the DeletionPolicy field will be ignored.
        See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
        and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
    providerConfigRef : SecretsmanagerAwsUpboundIoV1beta1SecretSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : SecretsmanagerAwsUpboundIoV1beta1SecretSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """
    deletionPolicy?: "Orphan" | "Delete" = "Delete"
    forProvider: SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProvider
    initProvider?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProvider
    managementPolicies?: [str] = ["*"]
    providerConfigRef?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecProviderConfigRef
    publishConnectionDetailsTo?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsTo
    writeConnectionSecretToRef?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecWriteConnectionSecretToRef

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProvider:
    """
    secretsmanager aws upbound io v1beta1 secret spec for provider

    Attributes
    ----------
    description : str, default is Undefined, optional
        Description of the secret.
    forceOverwriteReplicaSecret : bool, default is Undefined, optional
        Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
    kmsKeyId : str, default is Undefined, optional
        ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named aws/secretsmanager). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
    kmsKeyIdRef : SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDRef, default is Undefined, optional
        kms key Id ref
    kmsKeyIdSelector : SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDSelector, default is Undefined, optional
        kms key Id selector
    name : str, default is Undefined, optional
        Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /_+=.@- Conflicts with name_prefix.
    recoveryWindowInDays : float, default is Undefined, optional
        Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days. The default value is 30.
    region : str, default is Undefined, required
        Region for replicating the secret.
        Region is the region you'd like your resource to be created in.
    replica : [SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderReplicaItems0], default is Undefined, optional
        Configuration block to support secret replication. See details below.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    """
    description?: str
    forceOverwriteReplicaSecret?: bool
    kmsKeyId?: str
    kmsKeyIdRef?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDRef
    kmsKeyIdSelector?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDSelector
    name?: str
    recoveryWindowInDays?: float
    region: str
    replica?: [SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderReplicaItems0]
    tags?: {str:str}

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDRef:
    """
    Reference to a Key in kms to populate kmsKeyId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDRefPolicy

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution?: "Required" | "Optional" = "Required"
    resolve?: "Always" | "IfNotPresent"

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDSelector:
    """
    Selector for a Key in kms to populate kmsKeyId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDSelectorPolicy, default is Undefined, optional
        policy
    """
    matchControllerRef?: bool
    matchLabels?: {str:str}
    policy?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDSelectorPolicy

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderKmsKeyIDSelectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution?: "Required" | "Optional" = "Required"
    resolve?: "Always" | "IfNotPresent"

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecForProviderReplicaItems0:
    """
    secretsmanager aws upbound io v1beta1 secret spec for provider replica items0

    Attributes
    ----------
    kmsKeyId : str, default is Undefined, optional
        ARN, Key ID, or Alias of the AWS KMS key within the region secret is replicated to. If one is not specified, then Secrets Manager defaults to using the AWS account's default KMS key (aws/secretsmanager) in the region or creates one for use if non-existent.
    region : str, default is Undefined, required
        Region for replicating the secret.
    """
    kmsKeyId?: str
    region: str

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProvider:
    """
    THIS IS A BETA FIELD. It will be honored
    unless the Management Policies feature flag is disabled.
    InitProvider holds the same fields as ForProvider, with the exception
    of Identifier and other resource reference fields. The fields that are
    in InitProvider are merged into ForProvider when the resource is created.
    The same fields are also added to the terraform ignore_changes hook, to
    avoid updating them after creation. This is useful for fields that are
    required on creation, but we do not desire to update them after creation,
    for example because of an external controller is managing them, like an
    autoscaler.

    Attributes
    ----------
    description : str, default is Undefined, optional
        Description of the secret.
    forceOverwriteReplicaSecret : bool, default is Undefined, optional
        Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
    kmsKeyId : str, default is Undefined, optional
        ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named aws/secretsmanager). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
    kmsKeyIdRef : SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDRef, default is Undefined, optional
        kms key Id ref
    kmsKeyIdSelector : SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDSelector, default is Undefined, optional
        kms key Id selector
    name : str, default is Undefined, optional
        Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /_+=.@- Conflicts with name_prefix.
    recoveryWindowInDays : float, default is Undefined, optional
        Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days. The default value is 30.
    replica : [SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderReplicaItems0], default is Undefined, optional
        Configuration block to support secret replication. See details below.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    """
    description?: str
    forceOverwriteReplicaSecret?: bool
    kmsKeyId?: str
    kmsKeyIdRef?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDRef
    kmsKeyIdSelector?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDSelector
    name?: str
    recoveryWindowInDays?: float
    replica?: [SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderReplicaItems0]
    tags?: {str:str}

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDRef:
    """
    Reference to a Key in kms to populate kmsKeyId.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDRefPolicy

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution?: "Required" | "Optional" = "Required"
    resolve?: "Always" | "IfNotPresent"

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDSelector:
    """
    Selector for a Key in kms to populate kmsKeyId.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDSelectorPolicy, default is Undefined, optional
        policy
    """
    matchControllerRef?: bool
    matchLabels?: {str:str}
    policy?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDSelectorPolicy

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderKmsKeyIDSelectorPolicy:
    """
    Policies for selection.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution?: "Required" | "Optional" = "Required"
    resolve?: "Always" | "IfNotPresent"

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecInitProviderReplicaItems0:
    """
    secretsmanager aws upbound io v1beta1 secret spec init provider replica items0

    Attributes
    ----------
    kmsKeyId : str, default is Undefined, optional
        ARN, Key ID, or Alias of the AWS KMS key within the region secret is replicated to. If one is not specified, then Secrets Manager defaults to using the AWS account's default KMS key (aws/secretsmanager) in the region or creates one for use if non-existent.
    """
    kmsKeyId?: str

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecProviderConfigRef:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : SecretsmanagerAwsUpboundIoV1beta1SecretSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecProviderConfigRefPolicy

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecProviderConfigRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution?: "Required" | "Optional" = "Required"
    resolve?: "Always" | "IfNotPresent"

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsTo:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """
    configRef?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToConfigRef
    metadata?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToMetadata
    name: str

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToConfigRef:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToConfigRefPolicy

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToConfigRefPolicy:
    """
    Policies for referencing.

    Attributes
    ----------
    resolution : str, default is "Required", optional
        Resolution specifies whether resolution of this reference is required.
        The default is 'Required', which means the reconcile will fail if the
        reference cannot be resolved. 'Optional' means this reference will be
        a no-op if it cannot be resolved.
    resolve : str, default is Undefined, optional
        Resolve specifies when this reference should be resolved. The default
        is 'IfNotPresent', which will attempt to resolve the reference only when
        the corresponding field is not present. Use 'Always' to resolve the
        reference on every reconcile.
    """
    resolution?: "Required" | "Optional" = "Required"
    resolve?: "Always" | "IfNotPresent"

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecPublishConnectionDetailsToMetadata:
    """
    Metadata is the metadata for connection secret.

    Attributes
    ----------
    annotations : {str:str}, default is Undefined, optional
        Annotations are the annotations to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.annotations".
        - It is up to Secret Store implementation for others store types.
    labels : {str:str}, default is Undefined, optional
        Labels are the labels/tags to be added to connection secret.
        - For Kubernetes secrets, this will be used as "metadata.labels".
        - It is up to Secret Store implementation for others store types.
    $type : str, default is Undefined, optional
        Type is the SecretType for the connection secret.
        - Only valid for Kubernetes Secret Stores.
    """
    annotations?: {str:str}
    labels?: {str:str}
    $type?: str

schema SecretsmanagerAwsUpboundIoV1beta1SecretSpecWriteConnectionSecretToRef:
    """
    WriteConnectionSecretToReference specifies the namespace and name of a
    Secret to which any connection details for this managed resource should
    be written. Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.
    This field is planned to be replaced in a future release in favor of
    PublishConnectionDetailsTo. Currently, both could be set independently
    and connection details would be published to both without affecting
    each other.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the secret.
    namespace : str, default is Undefined, required
        Namespace of the secret.
    """
    name: str
    namespace: str

schema SecretsmanagerAwsUpboundIoV1beta1SecretStatus:
    """
    SecretStatus defines the observed state of Secret.

    Attributes
    ----------
    atProvider : SecretsmanagerAwsUpboundIoV1beta1SecretStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [SecretsmanagerAwsUpboundIoV1beta1SecretStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """
    atProvider?: SecretsmanagerAwsUpboundIoV1beta1SecretStatusAtProvider
    conditions?: [SecretsmanagerAwsUpboundIoV1beta1SecretStatusConditionsItems0]

schema SecretsmanagerAwsUpboundIoV1beta1SecretStatusAtProvider:
    """
    secretsmanager aws upbound io v1beta1 secret status at provider

    Attributes
    ----------
    arn : str, default is Undefined, optional
        ARN of the secret.
    description : str, default is Undefined, optional
        Description of the secret.
    forceOverwriteReplicaSecret : bool, default is Undefined, optional
        Accepts boolean value to specify whether to overwrite a secret with the same name in the destination Region.
    id : str, default is Undefined, optional
        ARN of the secret.
    kmsKeyId : str, default is Undefined, optional
        ARN or Id of the AWS KMS key to be used to encrypt the secret values in the versions stored in this secret. If you need to reference a CMK in a different account, you can use only the key ARN. If you don't specify this value, then Secrets Manager defaults to using the AWS account's default KMS key (the one named aws/secretsmanager). If the default KMS key with that name doesn't yet exist, then AWS Secrets Manager creates it for you automatically the first time.
    name : str, default is Undefined, optional
        Friendly name of the new secret. The secret name can consist of uppercase letters, lowercase letters, digits, and any of the following characters: /_+=.@- Conflicts with name_prefix.
    policy : str, default is Undefined, optional
        Valid JSON document representing a resource policy. Removing policy from your configuration or setting policy to null or an empty string (i.e., policy = "") will not delete the policy since it could have been set by aws_secretsmanager_secret_policy. To delete the policy, set it to "{}" (an empty JSON document).
    recoveryWindowInDays : float, default is Undefined, optional
        Number of days that AWS Secrets Manager waits before it can delete the secret. This value can be 0 to force deletion without recovery or range from 7 to 30 days. The default value is 30.
    replica : [SecretsmanagerAwsUpboundIoV1beta1SecretStatusAtProviderReplicaItems0], default is Undefined, optional
        Configuration block to support secret replication. See details below.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    tagsAll : {str:str}, default is Undefined, optional
        Map of tags assigned to the resource, including those inherited from the provider default_tags configuration block.
    """
    arn?: str
    description?: str
    forceOverwriteReplicaSecret?: bool
    id?: str
    kmsKeyId?: str
    name?: str
    policy?: str
    recoveryWindowInDays?: float
    replica?: [SecretsmanagerAwsUpboundIoV1beta1SecretStatusAtProviderReplicaItems0]
    tags?: {str:str}
    tagsAll?: {str:str}

schema SecretsmanagerAwsUpboundIoV1beta1SecretStatusAtProviderReplicaItems0:
    """
    secretsmanager aws upbound io v1beta1 secret status at provider replica items0

    Attributes
    ----------
    kmsKeyId : str, default is Undefined, optional
        ARN, Key ID, or Alias of the AWS KMS key within the region secret is replicated to. If one is not specified, then Secrets Manager defaults to using the AWS account's default KMS key (aws/secretsmanager) in the region or creates one for use if non-existent.
    lastAccessedDate : str, default is Undefined, optional
        Date that you last accessed the secret in the Region.
    region : str, default is Undefined, optional
        Region for replicating the secret.
    status : str, default is Undefined, optional
        Status can be InProgress, Failed, or InSync.
    statusMessage : str, default is Undefined, optional
        Message such as Replication succeeded or Secret with this name already exists in this region.
    """
    kmsKeyId?: str
    lastAccessedDate?: str
    region?: str
    status?: str
    statusMessage?: str

schema SecretsmanagerAwsUpboundIoV1beta1SecretStatusConditionsItems0:
    """
    A Condition that may apply to a resource.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        LastTransitionTime is the last time this condition transitioned from one
        status to another.
    message : str, default is Undefined, optional
        A Message containing details about this condition's last transition from
        one status to another, if any.
    reason : str, default is Undefined, required
        A Reason for this condition's last transition from one status to another.
    status : str, default is Undefined, required
        Status of this condition; is it currently True, False, or Unknown?
    $type : str, default is Undefined, required
        Type of this condition. At most one of each condition type may apply to
        a resource at any point in time.
    """
    lastTransitionTime: str
    message?: str
    reason: str
    status: str
    $type: str

