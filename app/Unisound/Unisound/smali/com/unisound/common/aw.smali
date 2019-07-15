.class public final enum Lcom/unisound/common/aw;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/common/aw;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/unisound/common/aw;

.field public static final enum b:Lcom/unisound/common/aw;

.field public static final enum c:Lcom/unisound/common/aw;

.field private static final synthetic d:[Lcom/unisound/common/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/common/aw;

    const-string v1, "MAN"

    invoke-direct {v0, v1, v2}, Lcom/unisound/common/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/aw;->a:Lcom/unisound/common/aw;

    new-instance v0, Lcom/unisound/common/aw;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3}, Lcom/unisound/common/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/aw;->b:Lcom/unisound/common/aw;

    new-instance v0, Lcom/unisound/common/aw;

    const-string v1, "UNKOWN"

    invoke-direct {v0, v1, v4}, Lcom/unisound/common/aw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/common/aw;->c:Lcom/unisound/common/aw;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/unisound/common/aw;

    sget-object v1, Lcom/unisound/common/aw;->a:Lcom/unisound/common/aw;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/common/aw;->b:Lcom/unisound/common/aw;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/common/aw;->c:Lcom/unisound/common/aw;

    aput-object v1, v0, v4

    sput-object v0, Lcom/unisound/common/aw;->d:[Lcom/unisound/common/aw;

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

.method public static a(Ljava/lang/String;)Lcom/unisound/common/aw;
    .locals 1

    const-class v0, Lcom/unisound/common/aw;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/common/aw;

    return-object v0
.end method

.method public static a()[Lcom/unisound/common/aw;
    .locals 1

    sget-object v0, Lcom/unisound/common/aw;->d:[Lcom/unisound/common/aw;

    invoke-virtual {v0}, [Lcom/unisound/common/aw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/common/aw;

    return-object v0
.end method
