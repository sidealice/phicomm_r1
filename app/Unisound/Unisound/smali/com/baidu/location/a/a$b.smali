.class Lcom/baidu/location/a/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/a/a;

.field private b:I

.field private c:Z


# virtual methods
.method public run()V
    .locals 2

    iget-boolean v0, p0, Lcom/baidu/location/a/a$b;->c:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/baidu/location/a/a$b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/baidu/location/a/a$b;->b:I

    iget-object v0, p0, Lcom/baidu/location/a/a$b;->a:Lcom/baidu/location/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/a/a;->a(Lcom/baidu/location/a/a;Z)Z

    goto :goto_0
.end method
