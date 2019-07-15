.class Lcom/tencent/smtt/sdk/b/a/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/b/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/b/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/b/a/b;->a:Lcom/tencent/smtt/sdk/b/a/a;

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/b/a/a;->b()V

    return-void
.end method
