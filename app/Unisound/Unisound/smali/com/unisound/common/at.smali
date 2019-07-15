.class public final enum Lcom/unisound/common/at;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/common/at;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/common/at;

.field public static final enum b:Lcom/unisound/common/at;

.field public static final enum c:Lcom/unisound/common/at;

.field private static final synthetic d:[Lcom/unisound/common/at;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/common/at;

    const-string v1, "idle"

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/at;->a:Lcom/unisound/common/at;

    new-instance v0, Lcom/unisound/common/at;

    const-string v1, "recording"

    invoke-direct {v0, v1, v3}, Lcom/unisound/common/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/at;->b:Lcom/unisound/common/at;

    new-instance v0, Lcom/unisound/common/at;

    const-string v1, "recognizing"

    invoke-direct {v0, v1, v4}, Lcom/unisound/common/at;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/at;->c:Lcom/unisound/common/at;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unisound/common/at;

    sget-object v1, Lcom/unisound/common/at;->a:Lcom/unisound/common/at;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/common/at;->b:Lcom/unisound/common/at;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/common/at;->c:Lcom/unisound/common/at;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unisound/common/at;->d:[Lcom/unisound/common/at;

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

.method public static a(Ljava/lang/String;)Lcom/unisound/common/at;
    .locals 1

    const-class v0, Lcom/unisound/common/at;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/at;

    return-object v0
.end method

.method public static a()[Lcom/unisound/common/at;
    .locals 1

    sget-object v0, Lcom/unisound/common/at;->d:[Lcom/unisound/common/at;

    invoke-virtual {v0}, [Lcom/unisound/common/at;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/common/at;

    return-object v0
.end method
