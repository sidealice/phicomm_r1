.class Lcom/phicomm/speaker/PhApplication$5$1;
.super Ljava/lang/Object;
.source "PhApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/PhApplication$5;->onActivityStarted(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/phicomm/speaker/PhApplication$5;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/PhApplication$5;Landroid/app/Activity;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/phicomm/speaker/PhApplication$5$1;->b:Lcom/phicomm/speaker/PhApplication$5;

    iput-object p2, p0, Lcom/phicomm/speaker/PhApplication$5$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.alibaba.sdk.android.feedback.windvane.CustomHybirdActivity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/PhApplication$5$1;->b:Lcom/phicomm/speaker/PhApplication$5;

    iget-object v0, v0, Lcom/phicomm/speaker/PhApplication$5;->a:Lcom/phicomm/speaker/PhApplication;

    invoke-static {v0}, Lcom/phicomm/speaker/PhApplication;->d(Lcom/phicomm/speaker/PhApplication;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-static {}, Lcom/phicomm/speaker/manager/b;->a()V

    :cond_0
    return-void
.end method
