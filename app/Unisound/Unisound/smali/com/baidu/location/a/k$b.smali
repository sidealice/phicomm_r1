.class Lcom/baidu/location/a/k$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/location/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/location/a/k;


# direct methods
.method private constructor <init>(Lcom/baidu/location/a/k;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/k$b;->a:Lcom/baidu/location/a/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/baidu/location/a/k;Lcom/baidu/location/a/k$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/baidu/location/a/k$b;-><init>(Lcom/baidu/location/a/k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/baidu/location/a/k$b;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/k$b;->a:Lcom/baidu/location/a/k;

    invoke-static {v0, v2}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Z)Z

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/a/k$b;->a:Lcom/baidu/location/a/k;

    invoke-static {v0}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/baidu/location/a/k$b;->a:Lcom/baidu/location/a/k;

    invoke-static {v0, v2}, Lcom/baidu/location/a/k;->b(Lcom/baidu/location/a/k;Z)Z

    iget-object v0, p0, Lcom/baidu/location/a/k$b;->a:Lcom/baidu/location/a/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/location/a/k;->a(Lcom/baidu/location/a/k;Landroid/os/Message;)V

    :cond_1
    return-void
.end method
