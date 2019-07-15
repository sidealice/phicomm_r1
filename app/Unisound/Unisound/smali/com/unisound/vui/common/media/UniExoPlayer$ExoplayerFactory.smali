.class public final Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unisound/vui/common/media/MusicPlayer$PlayerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/common/media/UniExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExoplayerFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/unisound/vui/common/media/MusicPlayer$PlayerFactory",
        "<",
        "Lcom/unisound/vui/common/media/UniExoPlayer;",
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public bridge synthetic newInstance()Lcom/unisound/vui/common/media/MusicPlayer;
    .locals 1

    invoke-virtual {p0}, Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;->newInstance()Lcom/unisound/vui/common/media/UniExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public newInstance()Lcom/unisound/vui/common/media/UniExoPlayer;
    .locals 3

    new-instance v0, Lcom/unisound/vui/common/media/UniExoPlayer;

    iget-object v1, p0, Lcom/unisound/vui/common/media/UniExoPlayer$ExoplayerFactory;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/unisound/vui/common/media/UniExoPlayer;-><init>(Landroid/content/Context;Lcom/unisound/vui/common/media/UniExoPlayer$1;)V

    return-object v0
.end method
