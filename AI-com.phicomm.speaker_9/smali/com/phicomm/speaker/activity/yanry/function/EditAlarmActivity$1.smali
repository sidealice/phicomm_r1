.class Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$1;
.super Ljava/lang/Object;
.source "EditAlarmActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity$1;->a:Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/yanry/function/EditAlarmActivity;->tvVolume:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/mqtt/shadow/CommonConfigInfo;->getAlarm_volume()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
