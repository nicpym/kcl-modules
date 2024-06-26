"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1

schema RegistryPolicy:
    """
    RegistryPolicy is the Schema for the RegistryPolicys API. Provides an Elastic Container Registry Policy.

    Attributes
    ----------
    apiVersion : str, default is "ecr.aws.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "RegistryPolicy", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : EcrAwsUpboundIoV1beta1RegistryPolicySpec, default is Undefined, required
        spec
    status : EcrAwsUpboundIoV1beta1RegistryPolicyStatus, default is Undefined, optional
        status
    """
    apiVersion: "ecr.aws.upbound.io/v1beta1" = "ecr.aws.upbound.io/v1beta1"
    kind: "RegistryPolicy" = "RegistryPolicy"
    metadata?: v1.ObjectMeta
    spec: EcrAwsUpboundIoV1beta1RegistryPolicySpec
    status?: EcrAwsUpboundIoV1beta1RegistryPolicyStatus

schema EcrAwsUpboundIoV1beta1RegistryPolicySpec:
    """
    RegistryPolicySpec defines the desired state of RegistryPolicy

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
    forProvider : EcrAwsUpboundIoV1beta1RegistryPolicySpecForProvider, default is Undefined, required
        for provider
    initProvider : EcrAwsUpboundIoV1beta1RegistryPolicySpecInitProvider, default is Undefined, optional
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
    providerConfigRef : EcrAwsUpboundIoV1beta1RegistryPolicySpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : EcrAwsUpboundIoV1beta1RegistryPolicySpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """
    deletionPolicy?: "Orphan" | "Delete" = "Delete"
    forProvider: EcrAwsUpboundIoV1beta1RegistryPolicySpecForProvider
    initProvider?: EcrAwsUpboundIoV1beta1RegistryPolicySpecInitProvider
    managementPolicies?: [str] = ["*"]
    providerConfigRef?: EcrAwsUpboundIoV1beta1RegistryPolicySpecProviderConfigRef
    publishConnectionDetailsTo?: EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsTo
    writeConnectionSecretToRef?: EcrAwsUpboundIoV1beta1RegistryPolicySpecWriteConnectionSecretToRef

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecForProvider:
    """
    ecr aws upbound io v1beta1 registry policy spec for provider

    Attributes
    ----------
    policy : str, default is Undefined, optional
        The policy document. This is a JSON formatted string
    region : str, default is Undefined, required
        Region is the region you'd like your resource to be created in.
    """
    policy?: str
    region: str

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecInitProvider:
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
    policy : str, default is Undefined, optional
        The policy document. This is a JSON formatted string
    """
    policy?: str

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecProviderConfigRef:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : EcrAwsUpboundIoV1beta1RegistryPolicySpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: EcrAwsUpboundIoV1beta1RegistryPolicySpecProviderConfigRefPolicy

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecProviderConfigRefPolicy:
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

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsTo:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """
    configRef?: EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToConfigRef
    metadata?: EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToMetadata
    name: str

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToConfigRef:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToConfigRefPolicy

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToConfigRefPolicy:
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

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecPublishConnectionDetailsToMetadata:
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

schema EcrAwsUpboundIoV1beta1RegistryPolicySpecWriteConnectionSecretToRef:
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

schema EcrAwsUpboundIoV1beta1RegistryPolicyStatus:
    """
    RegistryPolicyStatus defines the observed state of RegistryPolicy.

    Attributes
    ----------
    atProvider : EcrAwsUpboundIoV1beta1RegistryPolicyStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [EcrAwsUpboundIoV1beta1RegistryPolicyStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """
    atProvider?: EcrAwsUpboundIoV1beta1RegistryPolicyStatusAtProvider
    conditions?: [EcrAwsUpboundIoV1beta1RegistryPolicyStatusConditionsItems0]

schema EcrAwsUpboundIoV1beta1RegistryPolicyStatusAtProvider:
    """
    ecr aws upbound io v1beta1 registry policy status at provider

    Attributes
    ----------
    id : str, default is Undefined, optional
        id
    policy : str, default is Undefined, optional
        The policy document. This is a JSON formatted string
    registryId : str, default is Undefined, optional
        The registry ID where the registry was created.
    """
    id?: str
    policy?: str
    registryId?: str

schema EcrAwsUpboundIoV1beta1RegistryPolicyStatusConditionsItems0:
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

