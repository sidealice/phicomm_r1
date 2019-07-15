.class Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;
.super Ljava/lang/Object;
.source "ChangePhoneNumberActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)I

    move-result v0

    const v1, 0x7f06006f

    if-gtz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    const v3, 0x7f0f0202

    invoke-virtual {v2, v3}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v2}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->b(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/phicomm/speaker/f/x;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    .line 60
    invoke-virtual {v1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 59
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-virtual {v2}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v2}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " S  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;I)I

    .line 66
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)I

    move-result v1

    const-string v2, "CHANGE_PHONE_NUMBER_CODE_TIME"

    invoke-virtual {v0, v1, v2}, Lcom/phicomm/speaker/manager/a;->a(ILjava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$1;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->c(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
