.class public Lcom/jph/takephoto/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;,
        Lcom/jph/takephoto/permission/PermissionManager$TPermission;
    }
.end annotation


# static fields
.field private static final methodNames:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x9

    .line 55
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "onPickFromCapture"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "onPickFromCaptureWithCrop"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "onPickMultiple"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "onPickMultipleWithCrop"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "onPickFromDocuments"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "onPickFromDocumentsWithCrop"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "onPickFromGallery"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "onPickFromGalleryWithCrop"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "onCrop"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager;->methodNames:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Lcom/jph/takephoto/model/TContextWrap;Ljava/lang/reflect/Method;)Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;
    .locals 5
    .param p0    # Lcom/jph/takephoto/model/TContextWrap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/reflect/Method;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 74
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    .line 76
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager;->methodNames:[Ljava/lang/String;

    const/4 v1, 0x0

    array-length v0, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 77
    sget-object v4, Lcom/jph/takephoto/permission/PermissionManager;->methodNames:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 82
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->NOT_NEED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    .line 84
    :cond_2
    invoke-virtual {p0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget-object v2, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    const-string v2, "onPickFromCapture"

    .line 86
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "onPickFromCaptureWithCrop"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    move p1, v3

    goto :goto_5

    .line 87
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p1

    sget-object v2, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_3

    :cond_6
    move p1, v1

    :goto_5
    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    move v1, v3

    :cond_7
    if-nez v1, :cond_a

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_8

    .line 93
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v0}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    if-nez p1, :cond_9

    .line 94
    sget-object p1, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {p1}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/jph/takephoto/permission/PermissionManager;->requestPermission(Lcom/jph/takephoto/model/TContextWrap;[Ljava/lang/String;)V

    :cond_a
    if-eqz v1, :cond_b

    .line 97
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    goto :goto_6

    :cond_b
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    :goto_6
    return-object p0
.end method

.method public static handlePermissionsResult(Landroid/app/Activity;Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;Lcom/jph/takephoto/model/InvokeParam;Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;)V
    .locals 2

    .line 129
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$1;->$SwitchMap$com$jph$takephoto$permission$PermissionManager$TPermissionType:[I

    invoke-virtual {p1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 141
    :pswitch_0
    :try_start_0
    invoke-virtual {p2}, Lcom/jph/takephoto/model/InvokeParam;->getMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jph/takephoto/model/InvokeParam;->getProxy()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2}, Lcom/jph/takephoto/model/InvokeParam;->getArgs()[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 143
    invoke-static {p1}, Lcom/google/a/a/a/a/a/a;->a(Ljava/lang/Throwable;)V

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/jph/takephoto/R$string;->tip_permission_camera_storage:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/jph/takephoto/R$string;->tip_permission_storage:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/jph/takephoto/R$string;->tip_permission_camera:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/jph/takephoto/R$string;->tip_permission_camera_storage:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/jph/takephoto/app/TakePhoto$TakeResultListener;->takeFail(Lcom/jph/takephoto/model/TResult;Ljava/lang/String;)V

    goto :goto_1

    :goto_0
    move-object p1, v0

    :goto_1
    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 150
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onRequestPermissionsResult(I[Ljava/lang/String;[I)Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;
    .locals 6

    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    const/4 v0, 0x1

    .line 111
    array-length v1, p1

    move v2, v0

    move v3, v2

    move v0, p0

    :goto_0
    if-ge v0, v1, :cond_2

    .line 112
    aget v4, p2, v0

    if-eqz v4, :cond_1

    .line 113
    sget-object v4, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v4}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, p0

    goto :goto_1

    .line 115
    :cond_0
    sget-object v4, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v4}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue()Ljava/lang/String;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, p0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 120
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    :cond_3
    if-nez v2, :cond_4

    if-eqz v3, :cond_4

    .line 121
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_CAMERA_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    :cond_4
    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 122
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_STORAGE_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    :cond_5
    if-nez v3, :cond_6

    if-nez v2, :cond_6

    .line 123
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0

    .line 125
    :cond_6
    sget-object p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0
.end method

.method public static requestPermission(Lcom/jph/takephoto/model/TContextWrap;[Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/jph/takephoto/model/TContextWrap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 101
    invoke-virtual {p0}, Lcom/jph/takephoto/model/TContextWrap;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/16 v1, 0x7d0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/jph/takephoto/model/TContextWrap;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/jph/takephoto/model/TContextWrap;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0, p1, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void
.end method
