.class Lcom/baidu/location/a/r;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/a/n;


# direct methods
.method constructor <init>(Lcom/baidu/location/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/a/r;->a:Lcom/baidu/location/a/n;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/baidu/location/a/r;->a:Lcom/baidu/location/a/n;

    invoke-static {v0}, Lcom/baidu/location/a/n;->b(Lcom/baidu/location/a/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/a/r;->a:Lcom/baidu/location/a/n;

    invoke-static {v0}, Lcom/baidu/location/a/n;->c(Lcom/baidu/location/a/n;)V

    :cond_0
    return-void
.end method
