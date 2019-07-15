.class public final enum Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
.super Ljava/lang/Enum;
.source "PlayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/PlayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemPlayMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

.field public static final enum LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

.field public static final enum LIST_ORDER:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

.field public static final enum LIST_SHUFFLED:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

.field public static final enum SINGLE_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 118
    new-instance v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    const-string v1, "LIST_LOOP"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    new-instance v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    const-string v1, "LIST_SHUFFLED"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_SHUFFLED:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    new-instance v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    const-string v1, "SINGLE_LOOP"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->SINGLE_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    new-instance v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    const-string v1, "LIST_ORDER"

    invoke-direct {v0, v1, v5}, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_ORDER:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    .line 117
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    sget-object v1, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_SHUFFLED:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->SINGLE_LOOP:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->LIST_ORDER:Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->$VALUES:[Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

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
    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 117
    const-class v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;
    .locals 1

    .prologue
    .line 117
    sget-object v0, Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->$VALUES:[Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    invoke-virtual {v0}, [Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/handler/session/music/PlayController$ItemPlayMode;

    return-object v0
.end method
