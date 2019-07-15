.class Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;
.super Lcom/phicomm/speaker/presenter/b/r;
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

    .line 129
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 132
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v1, v1, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v1}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->c(Ljava/lang/String;)V

    const v0, 0x7f0f01bd

    .line 133
    invoke-static {v0}, Lcom/phicomm/speaker/f/ab;->a(I)V

    .line 134
    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/manager/a;->f()V

    .line 135
    invoke-static {}, Lcom/phicomm/speaker/f/c;->a()Lcom/phicomm/speaker/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/phicomm/speaker/f/c;->c()V

    .line 136
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    const-class v3, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "register_phone"

    iget-object v3, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    iget-object v3, v3, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->mMetPhoneNumber:Lcom/phicomm/speaker/views/MyEditText;

    invoke-virtual {v3}, Lcom/phicomm/speaker/views/MyEditText;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity$4;->a:Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;

    const p2, 0x7f0f01be

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/ChangePhoneNumberActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
