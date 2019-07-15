.class Lcom/baidu/location/l;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/baidu/location/g;


# direct methods
.method constructor <init>(Lcom/baidu/location/g;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/location/l;->a:Lcom/baidu/location/g;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/baidu/location/l;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->h(Lcom/baidu/location/g;)Lcom/baidu/location/a/c;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/baidu/location/l;->a:Lcom/baidu/location/g;

    new-instance v1, Lcom/baidu/location/a/c;

    iget-object v2, p0, Lcom/baidu/location/l;->a:Lcom/baidu/location/g;

    invoke-static {v2}, Lcom/baidu/location/g;->i(Lcom/baidu/location/g;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/location/l;->a:Lcom/baidu/location/g;

    invoke-static {v3}, Lcom/baidu/location/g;->f(Lcom/baidu/location/g;)Lcom/baidu/location/h;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/location/l;->a:Lcom/baidu/location/g;

    invoke-direct {v1, v2, v3, v4}, Lcom/baidu/location/a/c;-><init>(Landroid/content/Context;Lcom/baidu/location/h;Lcom/baidu/location/a/c$b;)V

    invoke-static {v0, v1}, Lcom/baidu/location/g;->a(Lcom/baidu/location/g;Lcom/baidu/location/a/c;)Lcom/baidu/location/a/c;

    :cond_0
    iget-object v0, p0, Lcom/baidu/location/l;->a:Lcom/baidu/location/g;

    invoke-static {v0}, Lcom/baidu/location/g;->h(Lcom/baidu/location/g;)Lcom/baidu/location/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/location/a/c;->c()V

    return-void
.end method
