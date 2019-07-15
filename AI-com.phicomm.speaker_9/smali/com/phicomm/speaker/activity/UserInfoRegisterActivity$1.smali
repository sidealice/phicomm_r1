.class Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$1;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "UserInfoRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->a(Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity$1;->a:Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;

    const p2, 0x7f0f021f

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/UserInfoRegisterActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
