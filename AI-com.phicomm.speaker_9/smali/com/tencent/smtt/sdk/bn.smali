.class final Lcom/tencent/smtt/sdk/bn;
.super Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "TbsNeedReboot"

    const-string v1, "WebView.updateNeeeRebootStatus--mAppContext == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/q;->a(Z)Lcom/tencent/smtt/sdk/q;

    move-result-object v1

    sget-boolean v2, Lcom/tencent/smtt/sdk/q;->a:Z

    if-eqz v2, :cond_1

    const-string v0, "TbsNeedReboot"

    const-string v1, "WebView.updateNeeeRebootStatus--needReboot = true"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->g()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/smtt/sdk/aj;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/aj;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/aj;->c()I

    move-result v3

    const-string v4, "TbsNeedReboot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WebView.updateNeeeRebootStatus--installStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v3, "TbsNeedReboot"

    const-string v4, "WebView.updateNeeeRebootStatus--install setTbsNeedReboot true"

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/aj;->b()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/q;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/q;->b(Z)Z

    return-void

    :cond_2
    const-string v4, "copy_status"

    invoke-virtual {v2, v4}, Lcom/tencent/smtt/sdk/aj;->b(Ljava/lang/String;)I

    move-result v4

    const-string v5, "TbsNeedReboot"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WebView.updateNeeeRebootStatus--copyStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v4, v0, :cond_3

    const-string v3, "TbsNeedReboot"

    const-string v4, "WebView.updateNeeeRebootStatus--copy setTbsNeedReboot true"

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "copy_core_ver"

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/aj;->c(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/q;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/q;->b(Z)Z

    return-void

    :cond_3
    invoke-static {}, Lcom/tencent/smtt/sdk/bo;->b()Lcom/tencent/smtt/sdk/bo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/bo;->c()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x3

    if-eq v3, v2, :cond_4

    if-ne v4, v2, :cond_5

    :cond_4
    const-string v2, "TbsNeedReboot"

    const-string v3, "WebView.updateNeeeRebootStatus--setTbsNeedReboot true"

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/q;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/smtt/sdk/q;->a(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/q;->b(Z)Z

    :cond_5
    return-void
.end method
