.class Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity$1;
.super Lcom/phicomm/speaker/model/common/a;
.source "BindGuideActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;J)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    invoke-direct {p0, p2, p3}, Lcom/phicomm/speaker/model/common/a;-><init>(J)V

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 4

    const-string v0, "click: %s."

    const/4 v1, 0x1

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 59
    iget-object p1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;

    const-class v2, Lcom/phicomm/speaker/activity/yanry/confignet/ApConnectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/yanry/confignet/BindGuideActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
