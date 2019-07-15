.class Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSessionManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaDrmHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 621
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>.MediaDrmHandler;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    .line 622
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 623
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager<TT;>.MediaDrmHandler;"
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 628
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$200(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 645
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$302(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;I)I

    .line 646
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$600(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    goto :goto_0

    .line 633
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$400(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)V

    goto :goto_0

    .line 639
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 640
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$302(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;I)I

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager$MediaDrmHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;

    new-instance v1, Lcom/google/android/exoplayer2/drm/KeysExpiredException;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/drm/KeysExpiredException;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;->access$500(Lcom/google/android/exoplayer2/drm/DefaultDrmSessionManager;Ljava/lang/Exception;)V

    goto :goto_0

    .line 631
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
