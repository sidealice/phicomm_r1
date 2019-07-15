.class Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer$2;
.super Ljava/lang/Object;
.source "RingingPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->play(IZLandroid/media/MediaPlayer$OnCompletionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer$2;->this$0:Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 74
    invoke-static {}, Lcom/unisound/vui/handler/session/memo/ring/RingingPlayer;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "play start"

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 76
    return-void
.end method
