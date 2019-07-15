.class public Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;
.super Landroid/os/Binder;
.source "MusicService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/music/MusicService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/music/MusicService;


# direct methods
.method public constructor <init>(Lcom/unisound/vui/handler/session/music/MusicService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/music/MusicService;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->this$0:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/unisound/vui/handler/session/music/MusicService;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->this$0:Lcom/unisound/vui/handler/session/music/MusicService;

    return-object v0
.end method

.method public setMusicPlayer(Lcom/unisound/vui/handler/session/music/CommonPlayer;)V
    .locals 2
    .param p1, "commonPlayer"    # Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->this$0:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-static {v0, p1}, Lcom/unisound/vui/handler/session/music/MusicService;->access$002(Lcom/unisound/vui/handler/session/music/MusicService;Lcom/unisound/vui/handler/session/music/CommonPlayer;)Lcom/unisound/vui/handler/session/music/CommonPlayer;

    .line 472
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->this$0:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-static {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->access$000(Lcom/unisound/vui/handler/session/music/MusicService;)Lcom/unisound/vui/handler/session/music/CommonPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->this$0:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->registerCallback(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Callback;)V

    .line 473
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->this$0:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-static {v0}, Lcom/unisound/vui/handler/session/music/MusicService;->access$000(Lcom/unisound/vui/handler/session/music/MusicService;)Lcom/unisound/vui/handler/session/music/CommonPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unisound/vui/handler/session/music/MusicService$MusicBinder;->this$0:Lcom/unisound/vui/handler/session/music/MusicService;

    invoke-interface {v0, v1}, Lcom/unisound/vui/handler/session/music/CommonPlayer;->setRenderer(Lcom/unisound/vui/handler/session/music/player/MusicPlayer$Renderer;)V

    .line 474
    return-void
.end method
