.class Lcom/phicomm/speaker/activity/ChangeNicknameActivity$2;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "ChangeNicknameActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/ChangeNicknameActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/ChangeNicknameActivity;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeNicknameActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 89
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/phicomm/speaker/a/g;

    iget-object v2, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeNicknameActivity;

    iget-object v2, v2, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->mEtNickname:Landroid/support/v7/widget/AppCompatEditText;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/phicomm/speaker/a/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeNicknameActivity;

    invoke-virtual {v0}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->finish()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 95
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/ChangeNicknameActivity$2;->a:Lcom/phicomm/speaker/activity/ChangeNicknameActivity;

    const p2, 0x7f0f021f

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/ChangeNicknameActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
