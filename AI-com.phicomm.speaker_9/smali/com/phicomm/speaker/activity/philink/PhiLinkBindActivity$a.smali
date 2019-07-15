.class Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;
.super Landroid/os/CountDownTimer;
.source "PhiLinkBindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;


# direct methods
.method public constructor <init>(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;JJ)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    .line 187
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvDownTime:Landroid/widget/TextView;

    const-string v1, "0s"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->d(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v0, v2, v1}, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->a(Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;ILjava/lang/String;)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity$a;->a:Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/philink/PhiLinkBindActivity;->mTvDownTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
