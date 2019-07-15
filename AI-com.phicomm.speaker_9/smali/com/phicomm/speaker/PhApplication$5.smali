.class Lcom/phicomm/speaker/PhApplication$5;
.super Ljava/lang/Object;
.source "PhApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/PhApplication;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/PhApplication;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/PhApplication;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/PhApplication;->a(Lcom/phicomm/speaker/PhApplication;Landroid/app/Activity;)Landroid/app/Activity;

    .line 235
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    iget v0, v0, Lcom/phicomm/speaker/PhApplication;->c:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, ">>>>>>>>>>>>>>>>>>>\u5207\u5230\u524d\u53f0  lifecycle"

    .line 236
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 237
    invoke-static {v1}, Lcom/phicomm/speaker/PhApplication;->a(Z)Z

    .line 238
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->b(Lcom/phicomm/speaker/PhApplication;)V

    .line 239
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->c(Lcom/phicomm/speaker/PhApplication;)V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    iget v2, v0, Lcom/phicomm/speaker/PhApplication;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, v0, Lcom/phicomm/speaker/PhApplication;->c:I

    .line 244
    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.alibaba.sdk.android.feedback.windvane.CustomHybirdActivity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-static {v0, v3}, Lcom/phicomm/speaker/PhApplication;->a(Lcom/phicomm/speaker/PhApplication;Z)Z

    .line 246
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/phicomm/speaker/PhApplication$5$1;

    invoke-direct {v1, p0, p1}, Lcom/phicomm/speaker/PhApplication$5$1;-><init>(Lcom/phicomm/speaker/PhApplication$5;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    .line 253
    invoke-static {p1}, Lcom/phicomm/speaker/PhApplication;->e(Lcom/phicomm/speaker/PhApplication;)J

    move-result-wide v2

    .line 246
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-static {p1, v1}, Lcom/phicomm/speaker/PhApplication;->a(Lcom/phicomm/speaker/PhApplication;Z)Z

    :goto_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 271
    iget-object p1, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    iget v0, p1, Lcom/phicomm/speaker/PhApplication;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/phicomm/speaker/PhApplication;->c:I

    .line 272
    iget-object p1, p0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    iget p1, p1, Lcom/phicomm/speaker/PhApplication;->c:I

    if-nez p1, :cond_0

    const-string p1, ">>>>>>>>>>>>>>>>>>>\u5207\u5230\u540e\u53f0  lifecycle"

    .line 273
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 274
    invoke-static {v1}, Lcom/phicomm/speaker/PhApplication;->a(Z)Z

    :cond_0
    return-void
.end method
