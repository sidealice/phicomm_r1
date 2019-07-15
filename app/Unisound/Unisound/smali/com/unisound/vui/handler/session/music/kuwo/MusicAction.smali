.class public final enum Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;
.super Ljava/lang/Enum;
.source "MusicAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum Exit:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum Next:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum NotSupport:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum Pause:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum Play:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum PlayAlbum:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum PlayArtist:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum PlayArtistAndSong:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum PlayAudioList:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum PlayRandom:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum PlaySong:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum Prev:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

.field public static final enum SetPlayMode:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "NotSupport"

    invoke-direct {v0, v1, v3}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->NotSupport:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 8
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "PlayRandom"

    invoke-direct {v0, v1, v4}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayRandom:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 9
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "PlayArtist"

    invoke-direct {v0, v1, v5}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayArtist:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 10
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "PlaySong"

    invoke-direct {v0, v1, v6}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlaySong:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 11
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "PlayAlbum"

    invoke-direct {v0, v1, v7}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayAlbum:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 12
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "PlayArtistAndSong"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayArtistAndSong:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 13
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "Prev"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Prev:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 14
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "Next"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Next:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 15
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "Pause"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Pause:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 16
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "Play"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Play:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 17
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "Exit"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Exit:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 18
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "SetPlayMode"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->SetPlayMode:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 19
    new-instance v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    const-string v1, "PlayAudioList"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayAudioList:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    .line 6
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->NotSupport:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayRandom:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayArtist:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlaySong:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayAlbum:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayArtistAndSong:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Prev:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Next:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Pause:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Play:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->Exit:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->SetPlayMode:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->PlayAudioList:Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->$VALUES:[Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

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

.method public static valueOf(Ljava/lang/String;)Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    return-object v0
.end method

.method public static values()[Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->$VALUES:[Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    invoke-virtual {v0}, [Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unisound/vui/handler/session/music/kuwo/MusicAction;

    return-object v0
.end method
