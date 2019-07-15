.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$13;
.super Ljava/lang/Object;
.source "SpeakerSettingActivity.java"

# interfaces
.implements Lcom/phicomm/speaker/presenter/mqtt/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$13;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "onSuccess"

    .line 510
    invoke-static {v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 512
    invoke-static {}, Lcom/phicomm/speaker/e/d;->a()Lcom/phicomm/speaker/e/d;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$13;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->c(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/phicomm/speaker/bean/litebean/PhiDeviceInfo;->getUdid()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/e/d;->b(Ljava/lang/String;Lcom/phicomm/speaker/e/c/d;)V

    .line 513
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/q;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/q;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 514
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$13;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "onFail"

    .line 519
    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    .line 520
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
