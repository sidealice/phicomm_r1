.class final Lcom/tencent/smtt/sdk/h;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/tencent/smtt/sdk/h;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/h;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/tencent/smtt/sdk/h;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/tencent/smtt/sdk/h;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-interface {p1}, Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;->onCoreInitFinished()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/h;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/h;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;->onViewInitFinished(Z)V

    :cond_0
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    return-void

    :pswitch_2
    invoke-static {}, Lcom/tencent/smtt/sdk/bo;->b()Lcom/tencent/smtt/sdk/bo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/bo;->d()Lcom/tencent/smtt/sdk/bp;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/tencent/smtt/sdk/h;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/tencent/smtt/sdk/bp;->a(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    :cond_1
    iget-object p1, p0, Lcom/tencent/smtt/sdk/h;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/tencent/smtt/sdk/h;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
