.class Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;
.super Landroid/os/Handler;
.source "DefaultDrmSession.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/drm/DefaultDrmSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PostRequestHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;Landroid/os/Looper;)V
    .locals 0
    .param p2, "backgroundLooper"    # Landroid/os/Looper;

    .prologue
    .line 510
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    iput-object p1, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    .line 511
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 512
    return-void
.end method

.method private getRetryDelayMillis(I)J
    .locals 2
    .param p1, "errorCount"    # I

    .prologue
    .line 558
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private maybeRetryRequest(Landroid/os/Message;)Z
    .locals 8
    .param p1, "originalMsg"    # Landroid/os/Message;

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 543
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v4, :cond_1

    move v0, v4

    .line 544
    .local v0, "allowRetry":Z
    :goto_0
    if-nez v0, :cond_2

    .line 554
    :cond_0
    :goto_1
    return v3

    .end local v0    # "allowRetry":Z
    :cond_1
    move v0, v3

    .line 543
    goto :goto_0

    .line 547
    .restart local v0    # "allowRetry":Z
    :cond_2
    iget v5, p1, Landroid/os/Message;->arg2:I

    add-int/lit8 v1, v5, 0x1

    .line 548
    .local v1, "errorCount":I
    iget-object v5, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    invoke-static {v5}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->access$300(Lcom/google/android/exoplayer2/drm/DefaultDrmSession;)I

    move-result v5

    if-gt v1, v5, :cond_0

    .line 551
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v2

    .line 552
    .local v2, "retryMsg":Landroid/os/Message;
    iput v1, v2, Landroid/os/Message;->arg2:I

    .line 553
    invoke-direct {p0, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->getRetryDelayMillis(I)J

    move-result-wide v6

    invoke-virtual {p0, v2, v6, v7}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v3, v4

    .line 554
    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 523
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    :try_start_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 531
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->maybeRetryRequest(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void

    .line 525
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;

    invoke-interface {v3, v4, v2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$ProvisionRequest;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 539
    :goto_1
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v2, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->postResponseHandler:Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 528
    :pswitch_1
    :try_start_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v3, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->callback:Lcom/google/android/exoplayer2/drm/MediaDrmCallback;

    iget-object v2, p0, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->this$0:Lcom/google/android/exoplayer2/drm/DefaultDrmSession;

    iget-object v4, v2, Lcom/google/android/exoplayer2/drm/DefaultDrmSession;->uuid:Ljava/util/UUID;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;

    invoke-interface {v3, v4, v2}, Lcom/google/android/exoplayer2/drm/MediaDrmCallback;->executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplayer2/drm/ExoMediaDrm$KeyRequest;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 529
    .local v1, "response":[B
    goto :goto_1

    .line 537
    .end local v1    # "response":[B
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v1, v0

    .local v1, "response":Ljava/lang/Exception;
    goto :goto_1

    .line 523
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method obtainMessage(ILjava/lang/Object;Z)Landroid/os/Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "allowRetry"    # Z

    .prologue
    .local p0, "this":Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;, "Lcom/google/android/exoplayer2/drm/DefaultDrmSession<TT;>.PostRequestHandler;"
    const/4 v1, 0x0

    .line 515
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/google/android/exoplayer2/drm/DefaultDrmSession$PostRequestHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
