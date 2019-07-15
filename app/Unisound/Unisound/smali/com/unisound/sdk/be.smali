.class final enum Lcom/unisound/sdk/be;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/sdk/be;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/sdk/be;

.field public static final enum b:Lcom/unisound/sdk/be;

.field private static final synthetic c:[Lcom/unisound/sdk/be;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/sdk/be;

    const-string v1, "synAndPlay"

    invoke-direct {v0, v1, v2}, Lcom/unisound/sdk/be;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/be;

    new-instance v0, Lcom/unisound/sdk/be;

    const-string v1, "onlySyn"

    invoke-direct {v0, v1, v3}, Lcom/unisound/sdk/be;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/sdk/be;->b:Lcom/unisound/sdk/be;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unisound/sdk/be;

    sget-object v1, Lcom/unisound/sdk/be;->a:Lcom/unisound/sdk/be;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/sdk/be;->b:Lcom/unisound/sdk/be;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unisound/sdk/be;->c:[Lcom/unisound/sdk/be;

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

.method public static a(Ljava/lang/String;)Lcom/unisound/sdk/be;
    .locals 1

    const-class v0, Lcom/unisound/sdk/be;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/sdk/be;

    return-object v0
.end method

.method public static a()[Lcom/unisound/sdk/be;
    .locals 1

    sget-object v0, Lcom/unisound/sdk/be;->c:[Lcom/unisound/sdk/be;

    invoke-virtual {v0}, [Lcom/unisound/sdk/be;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/sdk/be;

    return-object v0
.end method
