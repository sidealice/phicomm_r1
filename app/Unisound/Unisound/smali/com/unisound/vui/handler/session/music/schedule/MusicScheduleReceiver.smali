.class public Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicScheduleReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;
    }
.end annotation


# instance fields
.field private mScheduleTriggeredListener:Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;)V
    .locals 0
    .param p1, "mScheduleTriggeredListener"    # Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver;->mScheduleTriggeredListener:Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;

    .line 25
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    const-string v0, "MusicScheduleReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "stop_time"

    const-wide/16 v4, 0x0

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unisound/vui/util/LogMgr;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver;->mScheduleTriggeredListener:Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver;->mScheduleTriggeredListener:Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;

    invoke-interface {v0}, Lcom/unisound/vui/handler/session/music/schedule/MusicScheduleReceiver$ScheduleTriggeredListener;->onScheduleTriggered()V

    .line 34
    :cond_0
    return-void
.end method
