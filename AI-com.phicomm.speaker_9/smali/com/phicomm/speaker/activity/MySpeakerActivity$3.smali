.class Lcom/phicomm/speaker/activity/MySpeakerActivity$3;
.super Ljava/lang/Object;
.source "MySpeakerActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/adapter/o$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/MySpeakerActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/MySpeakerActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->f(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    return-void
.end method

.method public a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;Landroid/view/View;I)V
    .locals 0

    .line 173
    iget-object p2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {p2, p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a(Lcom/phicomm/speaker/activity/MySpeakerActivity;Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    .line 174
    iget-object p2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {p2, p3}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->a(Lcom/phicomm/speaker/activity/MySpeakerActivity;I)I

    .line 175
    iget-object p2, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {p2}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->e(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/presenter/d;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/phicomm/speaker/presenter/d;->a(Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$3;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->g(Lcom/phicomm/speaker/activity/MySpeakerActivity;)V

    return-void
.end method
