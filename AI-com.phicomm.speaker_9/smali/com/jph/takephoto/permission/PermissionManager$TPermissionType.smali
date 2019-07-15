.class public final enum Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;
.super Ljava/lang/Enum;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jph/takephoto/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TPermissionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum GRANTED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum NOT_NEED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum ONLY_CAMERA_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum ONLY_STORAGE_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

.field public static final enum WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;


# instance fields
.field stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 39
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    const-string v1, "GRANTED"

    const-string v2, "\u5df2\u6388\u6743"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    .line 40
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    const-string v1, "DENIED"

    const-string v2, "\u672a\u6388\u6743"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    .line 41
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    const-string v1, "WAIT"

    const-string v2, "\u7b49\u5f85\u6388\u6743"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    .line 42
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    const-string v1, "NOT_NEED"

    const-string v2, "\u65e0\u9700\u6388\u6743"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->NOT_NEED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    .line 43
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    const-string v1, "ONLY_CAMERA_DENIED"

    const-string v2, "\u6ca1\u6709\u62cd\u7167\u6743\u9650"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_CAMERA_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    .line 44
    new-instance v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    const-string v1, "ONLY_STORAGE_DENIED"

    const-string v2, "\u6ca1\u6709\u8bfb\u5199SD\u5361\u6743\u9650"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_STORAGE_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    const/4 v0, 0x6

    .line 38
    new-array v0, v0, [Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->GRANTED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->WAIT:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->NOT_NEED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_CAMERA_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->ONLY_STORAGE_DENIED:Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->$VALUES:[Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

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

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->stringValue:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;
    .locals 1

    .line 38
    const-class v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object p0
.end method

.method public static values()[Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;
    .locals 1

    .line 38
    sget-object v0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->$VALUES:[Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    invoke-virtual {v0}, [Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;

    return-object v0
.end method


# virtual methods
.method public stringValue()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/jph/takephoto/permission/PermissionManager$TPermissionType;->stringValue:Ljava/lang/String;

    return-object v0
.end method
