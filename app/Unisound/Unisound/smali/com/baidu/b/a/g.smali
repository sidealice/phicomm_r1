.class Lcom/baidu/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/baidu/b/a/f;


# direct methods
.method constructor <init>(Lcom/baidu/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/b/a/g;->a:Lcom/baidu/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "postWithHttps start Thread id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/b/a/d;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/baidu/b/a/j;

    iget-object v1, p0, Lcom/baidu/b/a/g;->a:Lcom/baidu/b/a/f;

    invoke-static {v1}, Lcom/baidu/b/a/f;->a(Lcom/baidu/b/a/f;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/baidu/b/a/j;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/baidu/b/a/g;->a:Lcom/baidu/b/a/f;

    invoke-static {v1}, Lcom/baidu/b/a/f;->b(Lcom/baidu/b/a/f;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/baidu/b/a/j;->a(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/b/a/g;->a:Lcom/baidu/b/a/f;

    invoke-static {v1, v0}, Lcom/baidu/b/a/f;->a(Lcom/baidu/b/a/f;Ljava/lang/String;)V

    return-void
.end method
