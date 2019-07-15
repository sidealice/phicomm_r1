.class public Lcom/alibaba/sdk/android/feedback/xblink/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/alibaba/sdk/android/feedback/xblink/c/j;

.field private b:Ljava/util/Map;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/sdk/android/feedback/xblink/c/j;Ljava/util/Map;Ljava/lang/String;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p5, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->c:I

    iput-object p2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/c/j;

    if-eqz p3, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b:Ljava/util/Map;

    :cond_0
    iput-object p4, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public declared-synchronized a(Lcom/alibaba/sdk/android/feedback/xblink/c/j;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/c/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    new-instance v0, Lcom/alibaba/sdk/android/feedback/xblink/c/h;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a(Ljava/util/Map;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->a(Z)V

    new-instance v1, Lcom/alibaba/sdk/android/feedback/xblink/c/c;

    invoke-direct {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/c;->a(Lcom/alibaba/sdk/android/feedback/xblink/c/h;)Lcom/alibaba/sdk/android/feedback/xblink/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->c()[B

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->e:[B

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/c/j;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->b()Ljava/util/Map;

    move-result-object v2

    const-string v3, "url"

    iget-object v4, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->d:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "response-code"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/alibaba/sdk/android/feedback/xblink/c/i;->a()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "httpsverifyerror"

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/feedback/xblink/c/h;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content-type"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "HtmlDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http charset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Lcom/alibaba/sdk/android/feedback/xblink/i/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "utf-8"

    invoke-static {}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "HtmlDownloader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default charset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/alibaba/sdk/android/feedback/xblink/i/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "charset"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/c/j;

    iget-object v1, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->e:[B

    iget v3, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->c:I

    invoke-interface {v0, v1, v2, v3}, Lcom/alibaba/sdk/android/feedback/xblink/c/j;->callback([BLjava/util/Map;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->b:Ljava/util/Map;

    iput-object v0, p0, Lcom/alibaba/sdk/android/feedback/xblink/c/a;->a:Lcom/alibaba/sdk/android/feedback/xblink/c/j;

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
