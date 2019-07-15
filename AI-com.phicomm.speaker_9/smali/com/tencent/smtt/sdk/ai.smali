.class Lcom/tencent/smtt/sdk/ai;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/ah;


# direct methods
.method constructor <init>(Lcom/tencent/smtt/sdk/ah;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/smtt/sdk/ai;->a:Lcom/tencent/smtt/sdk/ah;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x96

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/ai;->a:Lcom/tencent/smtt/sdk/ah;

    invoke-static {p1}, Lcom/tencent/smtt/sdk/ah;->a(Lcom/tencent/smtt/sdk/ah;)Z

    :cond_0
    return-void
.end method
