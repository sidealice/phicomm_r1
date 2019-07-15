.class public final Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$MediaplayerFactory;
.super Ljava/lang/Object;
.source "ANTMediaplayer.java"

# interfaces
.implements Lcom/unisound/vui/handler/session/music/player/MusicPlayer$PlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaplayerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/handler/session/music/player/MusicPlayer$PlayerFactory",
        "<",
        "Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$MediaplayerFactory;->context:Landroid/content/Context;

    .line 311
    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Lcom/unisound/vui/handler/session/music/player/MusicPlayer;
    .locals 1

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$MediaplayerFactory;->newInstance()Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;
    .locals 3

    .prologue
    .line 314
    new-instance v0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$MediaplayerFactory;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer;-><init>(Landroid/content/Context;Lcom/unisound/vui/handler/session/music/player/mediaplayer/ANTMediaplayer$1;)V

    return-object v0
.end method
