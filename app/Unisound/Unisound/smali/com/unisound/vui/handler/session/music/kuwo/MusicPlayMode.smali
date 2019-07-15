.class public final enum Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;
.super Ljava/lang/Enum;
.source "MusicPlayMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

.field public static final enum MODE_ALL_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

.field public static final enum MODE_ALL_ORDER:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

.field public static final enum MODE_ALL_RANDOM:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

.field public static final enum MODE_SINGLE_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

.field public static final enum MODE_SINGLE_PLAY:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    const-string v1, "MODE_SINGLE_CIRCLE"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_SINGLE_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .line 8
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    const-string v1, "MODE_SINGLE_PLAY"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_SINGLE_PLAY:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .line 9
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    const-string v1, "MODE_ALL_ORDER"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_ORDER:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .line 10
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    const-string v1, "MODE_ALL_CIRCLE"

    invoke-direct {v0, v1, v5}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .line 11
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    const-string v1, "MODE_ALL_RANDOM"

    invoke-direct {v0, v1, v6}, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_RANDOM:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_SINGLE_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_SINGLE_PLAY:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_ORDER:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_CIRCLE:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->MODE_ALL_RANDOM:Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->$VALUES:[Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->$VALUES:[Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    invoke-virtual {v0}, [Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/handler/session/music/kuwo/MusicPlayMode;

    return-object v0
.end method
