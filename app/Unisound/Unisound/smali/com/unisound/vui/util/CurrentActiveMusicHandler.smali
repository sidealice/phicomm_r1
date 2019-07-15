.class public final enum Lcom/unisound/vui/util/CurrentActiveMusicHandler;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/util/CurrentActiveMusicHandler;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/util/CurrentActiveMusicHandler;

.field public static final enum Audio:Lcom/unisound/vui/util/CurrentActiveMusicHandler;

.field public static final enum CarMusic:Lcom/unisound/vui/util/CurrentActiveMusicHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    const-string v1, "CarMusic"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/util/CurrentActiveMusicHandler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;->CarMusic:Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    new-instance v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    const-string v1, "Audio"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/util/CurrentActiveMusicHandler;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;->Audio:Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    sget-object v1, Lcom/unisound/vui/util/CurrentActiveMusicHandler;->CarMusic:Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/util/CurrentActiveMusicHandler;->Audio:Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;->$VALUES:[Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/util/CurrentActiveMusicHandler;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/util/CurrentActiveMusicHandler;
    .locals 1

    sget-object v0, Lcom/unisound/vui/util/CurrentActiveMusicHandler;->$VALUES:[Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    invoke-virtual {v0}, [Lcom/unisound/vui/util/CurrentActiveMusicHandler;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/util/CurrentActiveMusicHandler;

    return-object v0
.end method
