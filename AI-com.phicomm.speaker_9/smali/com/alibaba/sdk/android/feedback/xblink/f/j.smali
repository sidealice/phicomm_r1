.class public Lcom/alibaba/sdk/android/feedback/xblink/f/j;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    invoke-static {p1, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/k;->a(Ljava/lang/String;Landroid/content/Context;Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;)Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(IILandroid/content/Intent;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    invoke-virtual {v1, p1, p2, p3}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->a(IILandroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized b()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/j;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/alibaba/sdk/android/feedback/xblink/f/a;

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
