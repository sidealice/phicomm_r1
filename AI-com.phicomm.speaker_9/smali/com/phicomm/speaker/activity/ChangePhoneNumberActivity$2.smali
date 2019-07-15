.class Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;
.super Ljava/lang/Object;
.source "ChangePhoneNumberActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a()V
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

    .line 82
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v0, v0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v0}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->a(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 95
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mTvGetVerificationCode:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->b(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->b(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    .line 96
    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$2;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    .line 97
    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 95
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
