.class Lcom/phicomm/speaker/activity/SecurityVerificationActivity$3;
.super Lcom/phicomm/speaker/presenter/b/c;
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

    .line 108
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$3;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/Captcha;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SecurityVerificationActivity$3;->a:Lcom/phicomm/speaker/activity/SecurityVerificationActivity;

    invoke-static {v0, p1}, Lcom/phicomm/speaker/activity/SecurityVerificationActivity;->a(Lcom/phicomm/speaker/activity/SecurityVerificationActivity;Lcom/phicomm/speaker/bean/Captcha;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method
