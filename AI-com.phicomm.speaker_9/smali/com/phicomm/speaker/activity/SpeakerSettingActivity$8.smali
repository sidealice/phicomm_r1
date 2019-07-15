.class Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;
.super Lcom/phicomm/speaker/net/a/b;
.source "SpeakerSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/phicomm/speaker/net/a/b<",
        "Lcom/phicomm/speaker/bean/RomUpdateBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/net/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V
    .locals 3

    const-string v0, "SpeakerSettingActivity"

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuccess romUpdateBean = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->b(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 304
    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/RomUpdateBean;->getRet()I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SpeakerSettingActivity"

    const-string v2, "onSuccess had new rom version"

    .line 306
    invoke-static {v1, v2}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvVersionNewUpdate:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 308
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->b(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {v1, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Lcom/phicomm/speaker/bean/RomUpdateBean;)V

    goto :goto_0

    :cond_2
    const-string p1, "SpeakerSettingActivity"

    const-string v1, "onSuccess no new rom version"

    .line 313
    invoke-static {p1, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvVersionNewUpdate:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->b(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0f022a

    .line 316
    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 319
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Z)Z

    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 294
    check-cast p1, Lcom/phicomm/speaker/bean/RomUpdateBean;

    invoke-virtual {p0, p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a(Lcom/phicomm/speaker/bean/RomUpdateBean;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string p1, "SpeakerSettingActivity"

    const-string v0, "onError"

    .line 324
    invoke-static {p1, v0}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->b(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 329
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->j()V

    .line 330
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->mTvVersionNewUpdate:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 333
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SpeakerSettingActivity$8;->a:Lcom/phicomm/speaker/activity/SpeakerSettingActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/phicomm/speaker/activity/SpeakerSettingActivity;->a(Lcom/phicomm/speaker/activity/SpeakerSettingActivity;Z)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method
