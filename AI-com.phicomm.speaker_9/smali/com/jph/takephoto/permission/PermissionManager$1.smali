.class synthetic Lcom/jph/takephoto/permission/PermissionManager$1;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$jph$takephoto$permission$PermissionManager$TPermissionType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 129
    invoke-static {}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->values()[Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$1;->$SwitchMap$com$jph$takephoto$permission$PermissionManager$TPermissionType:[I

    :try_start_0
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$1;->$SwitchMap$com$jph$takephoto$permission$PermissionManager$TPermissionType:[I

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$1;->$SwitchMap$com$jph$takephoto$permission$PermissionManager$TPermissionType:[I

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_CAMERA_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$1;->$SwitchMap$com$jph$takephoto$permission$PermissionManager$TPermissionType:[I

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_STORAGE_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$1;->$SwitchMap$com$jph$takephoto$permission$PermissionManager$TPermissionType:[I

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v1}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
