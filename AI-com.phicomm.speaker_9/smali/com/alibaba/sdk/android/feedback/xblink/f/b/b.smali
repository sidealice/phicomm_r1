.class public Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;
.super Lcom/alibaba/sdk/android/feedback/xblink/f/a;


# instance fields
.field private d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/f/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public b()V
    .locals 3

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->d()Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v0

    const-string v1, "WXPage.onPaused"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->b()V

    return-void
.end method

.method public c()V
    .locals 3

    invoke-super {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/a;->c()V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->d()Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    move-result-object v0

    const-string v1, "WXPage.onResumed"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized d()Lcom/alibaba/sdk/android/feedback/xblink/f/b;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->b:Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/feedback/xblink/f/b;-><init>(Lcom/alibaba/sdk/android/feedback/xblink/webview/XBHybridWebView;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;

    :cond_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/f/b/b;->d:Lcom/alibaba/sdk/android/feedback/xblink/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
