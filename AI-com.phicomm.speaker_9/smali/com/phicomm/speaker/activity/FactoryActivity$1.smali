.class Lcom/phicomm/speaker/activity/FactoryActivity$1;
.super Ljava/lang/Object;
.source "FactoryActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/adapter/FactoryInfoAdapter$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/FactoryActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/FactoryActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/FactoryActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$1;->a:Lcom/phicomm/speaker/activity/FactoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$1;->a:Lcom/phicomm/speaker/activity/FactoryActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity$1;->a:Lcom/phicomm/speaker/activity/FactoryActivity;

    const v1, 0x7f0f00e4

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/FactoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$1;->a:Lcom/phicomm/speaker/activity/FactoryActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/FactoryActivity;->a(Lcom/phicomm/speaker/activity/FactoryActivity;)V

    .line 59
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$1;->a:Lcom/phicomm/speaker/activity/FactoryActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/FactoryActivity;->a:Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/adapter/FactoryInfoAdapter;->a(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/phicomm/speaker/activity/FactoryActivity$1;->a:Lcom/phicomm/speaker/activity/FactoryActivity;

    const v1, 0x7f0f0169

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/FactoryActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/phicomm/speaker/activity/FactoryActivity$1;->a:Lcom/phicomm/speaker/activity/FactoryActivity;

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/FactoryActivity;->a(Lcom/phicomm/speaker/activity/FactoryActivity;I)V

    :cond_1
    return-void
.end method
