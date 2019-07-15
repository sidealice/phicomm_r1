.class Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$MemoRingEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DefaultMemoRingingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MemoRingEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;


# direct methods
.method constructor <init>(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$MemoRingEventReceiver;->this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 394
    const-string v2, "extra_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 395
    .local v0, "time":J
    const-string v2, "memolog-RingHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoRingEventReceiver onReceive: time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string v2, "memolog-RingHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MemoRingEventReceiver onReceive: time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "yyyyMMdd HH:mm:ss"

    invoke-static {v0, v1, v4}, Lcom/unisound/vui/util/TimeUtils;->format(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-static {p1}, Lcom/unisound/vui/util/UserPerferenceUtil;->getDeviceBindState(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 401
    const-string v2, "memolog-RingHandler"

    const-string v3, "device is not bound, ignore all memo ring event"

    invoke-static {v2, v3}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    :goto_0
    return-void

    .line 405
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 406
    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$MemoRingEventReceiver;->this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    invoke-static {v2}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->access$100(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;)Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1}, Lcom/unisound/vui/handler/session/memo/schulding/MemoDataManager;->updateMemosByExpiredTime(Landroid/content/Context;J)V

    goto :goto_0

    .line 410
    :cond_1
    iget-object v2, p0, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler$MemoRingEventReceiver;->this$0:Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;

    invoke-static {v2, v0, v1}, Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;->access$200(Lcom/unisound/vui/handler/session/memo/DefaultMemoRingingHandler;J)V

    goto :goto_0
.end method
