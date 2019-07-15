.class public final enum Lcom/unisound/sdk/at;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/sdk/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/sdk/at;

.field public static final enum b:Lcom/unisound/sdk/at;

.field public static final enum c:Lcom/unisound/sdk/at;

.field public static final enum d:Lcom/unisound/sdk/at;

.field private static final synthetic e:[Lcom/unisound/sdk/at;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/sdk/at;

    const-string v1, "VPR"

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/at;->a:Lcom/unisound/sdk/at;

    new-instance v0, Lcom/unisound/sdk/at;

    const-string v1, "ASR"

    invoke-direct {v0, v1, v3}, Lcom/unisound/sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/at;->b:Lcom/unisound/sdk/at;

    new-instance v0, Lcom/unisound/sdk/at;

    const-string v1, "NLU"

    invoke-direct {v0, v1, v4}, Lcom/unisound/sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/at;->c:Lcom/unisound/sdk/at;

    new-instance v0, Lcom/unisound/sdk/at;

    const-string v1, "ASR_NLU"

    invoke-direct {v0, v1, v5}, Lcom/unisound/sdk/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/at;->d:Lcom/unisound/sdk/at;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unisound/sdk/at;

    sget-object v1, Lcom/unisound/sdk/at;->a:Lcom/unisound/sdk/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/sdk/at;->b:Lcom/unisound/sdk/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/sdk/at;->c:Lcom/unisound/sdk/at;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/sdk/at;->d:Lcom/unisound/sdk/at;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unisound/sdk/at;->e:[Lcom/unisound/sdk/at;

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

.method public static a(Ljava/lang/String;)Lcom/unisound/sdk/at;
    .locals 1

    const-class v0, Lcom/unisound/sdk/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/sdk/at;

    return-object v0
.end method

.method public static a()[Lcom/unisound/sdk/at;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/at;->e:[Lcom/unisound/sdk/at;

    invoke-virtual {v0}, [Lcom/unisound/sdk/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/sdk/at;

    return-object v0
.end method
