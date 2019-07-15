.class Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;
.super Lcom/phicomm/speaker/presenter/b/c;
.source "ChangePhoneNumberActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->d()V
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

    .line 110
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 114
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    const v0, 0x7f0f005d

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->d(Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;)V

    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    const p2, 0x7f0f0151

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$3;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object p1, p1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {p1}, Lcom/phicomm/speaker/views/MyEditText;->getEt()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
