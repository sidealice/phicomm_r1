.class Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;
.super Ljava/lang/Object;
.source "UTMCAppStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;


# direct methods
.method private constructor <init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$1;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;-><init>(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;Z)Z

    .line 142
    iget-object v0, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-static {v0}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_0
    iget-object v1, p0, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor$a;->b:Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;

    invoke-static {v1}, Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;->a(Lcom/ut/mini/core/appstatus/UTMCAppStatusMonitor;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;

    .line 144
    invoke-interface {v2}, Lcom/ut/mini/core/appstatus/UTMCAppStatusCallbacks;->onSwitchBackground()V

    goto :goto_0

    .line 146
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
