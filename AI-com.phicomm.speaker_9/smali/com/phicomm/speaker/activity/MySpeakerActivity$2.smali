.class Lcom/phicomm/speaker/activity/MySpeakerActivity$2;
.super Ljava/lang/Object;
.source "MySpeakerActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/MySpeakerActivity;->a()V
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

    .line 132
    iput-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$2;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$2;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->c(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/adapter/o;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 137
    iget-object p1, p0, Lcom/phicomm/speaker/activity/MySpeakerActivity$2;->a:Lcom/phicomm/speaker/activity/MySpeakerActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/MySpeakerActivity;->c(Lcom/phicomm/speaker/activity/MySpeakerActivity;)Lcom/phicomm/speaker/adapter/o;

    move-result-object p1

    invoke-virtual {p1}, Lcom/phicomm/speaker/adapter/o;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
