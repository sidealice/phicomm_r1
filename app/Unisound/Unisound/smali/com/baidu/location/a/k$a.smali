.class Lcom/baidu/location/a/k$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/a/k;


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->c(Lcom/baidu/location/a/k;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->c(Lcom/baidu/location/a/k;Z)Z

    iget-object v0, p0, Lcom/baidu/location/a/k$a;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->d(Lcom/baidu/location/a/k;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method
