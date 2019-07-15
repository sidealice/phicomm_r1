.class public final enum Lcom/unisound/common/k;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/common/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/common/k;

.field public static final enum b:Lcom/unisound/common/k;

.field public static final enum c:Lcom/unisound/common/k;

.field public static final enum d:Lcom/unisound/common/k;

.field private static final synthetic e:[Lcom/unisound/common/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/common/k;

    const-string v1, "NO_EXTENSION_NAME"

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/k;->a:Lcom/unisound/common/k;

    new-instance v0, Lcom/unisound/common/k;

    const-string v1, "PCM_EXTENSION_NAME"

    invoke-direct {v0, v1, v3}, Lcom/unisound/common/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/k;->b:Lcom/unisound/common/k;

    new-instance v0, Lcom/unisound/common/k;

    const-string v1, "WAV_EXTENSION_NAME"

    invoke-direct {v0, v1, v4}, Lcom/unisound/common/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/k;->c:Lcom/unisound/common/k;

    new-instance v0, Lcom/unisound/common/k;

    const-string v1, "OTHER_EXTENSION_NAME"

    invoke-direct {v0, v1, v5}, Lcom/unisound/common/k;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/k;->d:Lcom/unisound/common/k;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unisound/common/k;

    sget-object v1, Lcom/unisound/common/k;->a:Lcom/unisound/common/k;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/common/k;->b:Lcom/unisound/common/k;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/common/k;->c:Lcom/unisound/common/k;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/common/k;->d:Lcom/unisound/common/k;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unisound/common/k;->e:[Lcom/unisound/common/k;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/unisound/common/k;
    .locals 1

    const-class v0, Lcom/unisound/common/k;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/k;

    return-object v0
.end method

.method public static a()[Lcom/unisound/common/k;
    .locals 1

    sget-object v0, Lcom/unisound/common/k;->e:[Lcom/unisound/common/k;

    invoke-virtual {v0}, [Lcom/unisound/common/k;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/common/k;

    return-object v0
.end method
