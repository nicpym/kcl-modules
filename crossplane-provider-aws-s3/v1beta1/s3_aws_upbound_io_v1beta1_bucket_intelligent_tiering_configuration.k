"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1

schema BucketIntelligentTieringConfiguration:
    """
    BucketIntelligentTieringConfiguration is the Schema for the BucketIntelligentTieringConfigurations API. Provides an S3 Intelligent-Tiering configuration resource.

    Attributes
    ----------
    apiVersion : str, default is "s3.aws.upbound.io/v1beta1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "BucketIntelligentTieringConfiguration", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpec, default is Undefined, required
        spec
    status : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatus, default is Undefined, optional
        status
    """
    apiVersion: "s3.aws.upbound.io/v1beta1" = "s3.aws.upbound.io/v1beta1"
    kind: "BucketIntelligentTieringConfiguration" = "BucketIntelligentTieringConfiguration"
    metadata?: v1.ObjectMeta
    spec: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpec
    status?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatus

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpec:
    """
    BucketIntelligentTieringConfigurationSpec defines the desired state of BucketIntelligentTieringConfiguration

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
    forProvider : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProvider, default is Undefined, required
        for provider
    initProvider : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProvider, default is Undefined, optional
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
    providerConfigRef : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecProviderConfigRef, default is Undefined, optional
        provider config ref
    publishConnectionDetailsTo : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsTo, default is Undefined, optional
        publish connection details to
    writeConnectionSecretToRef : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecWriteConnectionSecretToRef, default is Undefined, optional
        write connection secret to ref
    """
    deletionPolicy?: "Orphan" | "Delete" = "Delete"
    forProvider: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProvider
    initProvider?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProvider
    managementPolicies?: [str] = ["*"]
    providerConfigRef?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecProviderConfigRef
    publishConnectionDetailsTo?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsTo
    writeConnectionSecretToRef?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecWriteConnectionSecretToRef

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProvider:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration spec for provider

    Attributes
    ----------
    bucket : str, default is Undefined, optional
        Name of the bucket this intelligent tiering configuration is associated with.
    bucketRef : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketRef, default is Undefined, optional
        bucket ref
    bucketSelector : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketSelector, default is Undefined, optional
        bucket selector
    $filter : [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderFilterItems0], default is Undefined, optional
        Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
    name : str, default is Undefined, optional
        Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
    region : str, default is Undefined, required
        Region is the region you'd like your resource to be created in.
    status : str, default is Undefined, optional
        Specifies the status of the configuration. Valid values: Enabled, Disabled.
    tiering : [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderTieringItems0], default is Undefined, optional
        S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
    """
    bucket?: str
    bucketRef?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketRef
    bucketSelector?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketSelector
    $filter?: [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderFilterItems0]
    name?: str
    region: str
    status?: str
    tiering?: [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderTieringItems0]

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketRef:
    """
    Reference to a Bucket in s3 to populate bucket.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketRefPolicy

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketRefPolicy:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketSelector:
    """
    Selector for a Bucket in s3 to populate bucket.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketSelectorPolicy, default is Undefined, optional
        policy
    """
    matchControllerRef?: bool
    matchLabels?: {str:str}
    policy?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketSelectorPolicy

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderBucketSelectorPolicy:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderFilterItems0:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration spec for provider filter items0

    Attributes
    ----------
    prefix : str, default is Undefined, optional
        Object key name prefix that identifies the subset of objects to which the configuration applies.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    """
    prefix?: str
    tags?: {str:str}

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecForProviderTieringItems0:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration spec for provider tiering items0

    Attributes
    ----------
    accessTier : str, default is Undefined, optional
        S3 Intelligent-Tiering access tier. Valid values: ARCHIVE_ACCESS, DEEP_ARCHIVE_ACCESS.
    days : float, default is Undefined, optional
        Number of consecutive days of no access after which an object will be eligible to be transitioned to the corresponding tier.
    """
    accessTier?: str
    days?: float

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProvider:
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
    bucket : str, default is Undefined, optional
        Name of the bucket this intelligent tiering configuration is associated with.
    bucketRef : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketRef, default is Undefined, optional
        bucket ref
    bucketSelector : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketSelector, default is Undefined, optional
        bucket selector
    $filter : [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderFilterItems0], default is Undefined, optional
        Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
    name : str, default is Undefined, optional
        Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
    status : str, default is Undefined, optional
        Specifies the status of the configuration. Valid values: Enabled, Disabled.
    tiering : [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderTieringItems0], default is Undefined, optional
        S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
    """
    bucket?: str
    bucketRef?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketRef
    bucketSelector?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketSelector
    $filter?: [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderFilterItems0]
    name?: str
    status?: str
    tiering?: [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderTieringItems0]

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketRef:
    """
    Reference to a Bucket in s3 to populate bucket.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketRefPolicy

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketRefPolicy:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketSelector:
    """
    Selector for a Bucket in s3 to populate bucket.

    Attributes
    ----------
    matchControllerRef : bool, default is Undefined, optional
        MatchControllerRef ensures an object with the same controller reference
        as the selecting object is selected.
    matchLabels : {str:str}, default is Undefined, optional
        MatchLabels ensures an object with matching labels is selected.
    policy : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketSelectorPolicy, default is Undefined, optional
        policy
    """
    matchControllerRef?: bool
    matchLabels?: {str:str}
    policy?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketSelectorPolicy

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderBucketSelectorPolicy:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderFilterItems0:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration spec init provider filter items0

    Attributes
    ----------
    prefix : str, default is Undefined, optional
        Object key name prefix that identifies the subset of objects to which the configuration applies.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    """
    prefix?: str
    tags?: {str:str}

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecInitProviderTieringItems0:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration spec init provider tiering items0

    Attributes
    ----------
    accessTier : str, default is Undefined, optional
        S3 Intelligent-Tiering access tier. Valid values: ARCHIVE_ACCESS, DEEP_ARCHIVE_ACCESS.
    days : float, default is Undefined, optional
        Number of consecutive days of no access after which an object will be eligible to be transitioned to the corresponding tier.
    """
    accessTier?: str
    days?: float

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecProviderConfigRef:
    """
    ProviderConfigReference specifies how the provider that will be used to
    create, observe, update, and delete this managed resource should be
    configured.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecProviderConfigRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecProviderConfigRefPolicy

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecProviderConfigRefPolicy:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsTo:
    """
    PublishConnectionDetailsTo specifies the connection secret config which
    contains a name, metadata and a reference to secret store config to
    which any connection details for this managed resource should be written.
    Connection details frequently include the endpoint, username,
    and password required to connect to the managed resource.

    Attributes
    ----------
    configRef : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToConfigRef, default is Undefined, optional
        config ref
    metadata : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToMetadata, default is Undefined, optional
        metadata
    name : str, default is Undefined, required
        Name is the name of the connection secret.
    """
    configRef?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToConfigRef
    metadata?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToMetadata
    name: str

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToConfigRef:
    """
    SecretStoreConfigRef specifies which secret store config should be used
    for this ConnectionSecret.

    Attributes
    ----------
    name : str, default is Undefined, required
        Name of the referenced object.
    policy : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToConfigRefPolicy, default is Undefined, optional
        policy
    """
    name: str
    policy?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToConfigRefPolicy

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToConfigRefPolicy:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecPublishConnectionDetailsToMetadata:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationSpecWriteConnectionSecretToRef:
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

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatus:
    """
    BucketIntelligentTieringConfigurationStatus defines the observed state of BucketIntelligentTieringConfiguration.

    Attributes
    ----------
    atProvider : S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProvider, default is Undefined, optional
        at provider
    conditions : [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusConditionsItems0], default is Undefined, optional
        Conditions of the resource.
    """
    atProvider?: S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProvider
    conditions?: [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusConditionsItems0]

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProvider:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration status at provider

    Attributes
    ----------
    bucket : str, default is Undefined, optional
        Name of the bucket this intelligent tiering configuration is associated with.
    $filter : [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProviderFilterItems0], default is Undefined, optional
        Bucket filter. The configuration only includes objects that meet the filter's criteria (documented below).
    id : str, default is Undefined, optional
        id
    name : str, default is Undefined, optional
        Unique name used to identify the S3 Intelligent-Tiering configuration for the bucket.
    status : str, default is Undefined, optional
        Specifies the status of the configuration. Valid values: Enabled, Disabled.
    tiering : [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProviderTieringItems0], default is Undefined, optional
        S3 Intelligent-Tiering storage class tiers of the configuration (documented below).
    """
    bucket?: str
    $filter?: [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProviderFilterItems0]
    id?: str
    name?: str
    status?: str
    tiering?: [S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProviderTieringItems0]

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProviderFilterItems0:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration status at provider filter items0

    Attributes
    ----------
    prefix : str, default is Undefined, optional
        Object key name prefix that identifies the subset of objects to which the configuration applies.
    tags : {str:str}, default is Undefined, optional
        Key-value map of resource tags.
    """
    prefix?: str
    tags?: {str:str}

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusAtProviderTieringItems0:
    """
    s3 aws upbound io v1beta1 bucket intelligent tiering configuration status at provider tiering items0

    Attributes
    ----------
    accessTier : str, default is Undefined, optional
        S3 Intelligent-Tiering access tier. Valid values: ARCHIVE_ACCESS, DEEP_ARCHIVE_ACCESS.
    days : float, default is Undefined, optional
        Number of consecutive days of no access after which an object will be eligible to be transitioned to the corresponding tier.
    """
    accessTier?: str
    days?: float

schema S3AwsUpboundIoV1beta1BucketIntelligentTieringConfigurationStatusConditionsItems0:
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

