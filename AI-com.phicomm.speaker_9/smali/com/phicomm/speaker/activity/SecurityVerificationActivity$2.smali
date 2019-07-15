.class Lcom/phicomm/speaker/activity/SecurityVerificationActivity$2;
.super Lcom/phicomm/speaker/presenter/b/r;
.source "SecurityVerificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$2;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/r;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$2;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->d(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 99
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$2;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    const p2, 0x7f0f01c7

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
