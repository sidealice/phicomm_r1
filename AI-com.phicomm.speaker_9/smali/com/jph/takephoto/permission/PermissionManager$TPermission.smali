.class public final enum Lcom/jph/takephoto/permission/PermissionManager$TPermission;
.super Ljava/lang/Enum;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TPermission"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jph/takephoto/permission/PermissionManager$TPermission;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jph/takephoto/permission/PermissionManager$TPermission;

.field public static final enum CAMERA:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

.field public static final enum STORAGE:Lcom/jph/takephoto/permission/PermissionManager$TPermission;


# instance fields
.field stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 25
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    const-string v1, "STORAGE"

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    .line 26
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    const-string v1, "CAMERA"

    const-string v2, "android.permission.CAMERA"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermission;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    const/4 v0, 0x2

    .line 24
    new-array v0, v0, [Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->STORAGE:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->CAMERA:Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    aput-object v1, v0, v4

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->$VALUES:[Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput-object p3, p0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jph/takephoto/permission/PermissionManager$TPermission;
    .locals 1

    .line 24
    const-class v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    return-object p0
.end method

.method public static values()[Lcom/jph/takephoto/permission/PermissionManager$TPermission;
    .locals 1

    .line 24
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->$VALUES:[Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    invoke-virtual {v0}, [Lcom/jph/takephoto/permission/PermissionManager$TPermission;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jph/takephoto/permission/PermissionManager$TPermission;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/jph/takephoto/permission/PermissionManager$TPermission;->stringValue:Ljava/lang/String;

    return-object v0
.end method
