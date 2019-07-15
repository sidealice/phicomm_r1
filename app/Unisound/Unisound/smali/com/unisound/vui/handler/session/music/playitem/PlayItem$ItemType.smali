.class public final enum Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
.super Ljava/lang/Enum;
.source "PlayItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/playitem/PlayItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

.field public static final enum TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

.field public static final enum TYPE_BROADCAST:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

.field public static final enum TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

.field public static final enum TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

.field public static final enum TYPE_RADIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    const-string v1, "TYPE_MUSIC"

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    const-string v1, "TYPE_AUDIO"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    const-string v1, "TYPE_RADIO"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_RADIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    const-string v1, "TYPE_NEWS"

    invoke-direct {v0, v1, v5}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    new-instance v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    const-string v1, "TYPE_BROADCAST"

    invoke-direct {v0, v1, v6}, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_BROADCAST:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    .line 11
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_MUSIC:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_AUDIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_RADIO:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_NEWS:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->TYPE_BROADCAST:Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->$VALUES:[Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->$VALUES:[Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    invoke-virtual {v0}, [Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/handler/session/music/playitem/PlayItem$ItemType;

    return-object v0
.end method
