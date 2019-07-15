.class Lcom/phicomm/speaker/activity/SplashActivity$2;
.super Lcom/phicomm/speaker/presenter/b/c;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/SplashActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/SplashActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/SplashActivity;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/phicomm/speaker/activity/SplashActivity$2;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CloudAccount;)V
    .locals 0

    .line 80
    invoke-static {}, Lcom/phicomm/speaker/f/ae;->a()V

    .line 81
    invoke-static {}, Lcom/phicomm/speaker/d/c;->a()V

    .line 82
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SplashActivity$2;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SplashActivity;->a(Lcom/phicomm/speaker/activity/SplashActivity;)V

    return-void
.end method

.method public b(Lcom/phicomm/speaker/bean/CloudAccount;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity$2;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    invoke-static {v0}, Lcom/phicomm/speaker/activity/SplashActivity;->b(Lcom/phicomm/speaker/activity/SplashActivity;)Lcom/phicomm/speaker/presenter/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CloudAccount;->getAccess_token()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/phicomm/speaker/presenter/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SplashActivity$2;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/phicomm/speaker/activity/SplashActivity$2;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    const-class v1, Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/activity/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 89
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SplashActivity$2;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    invoke-virtual {p1}, Lcom/phicomm/speaker/activity/SplashActivity;->finish()V

    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 69
    iget-object p1, p0, Lcom/phicomm/speaker/activity/SplashActivity$2;->a:Lcom/phicomm/speaker/activity/SplashActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/SplashActivity;->b(Lcom/phicomm/speaker/activity/SplashActivity;)Lcom/phicomm/speaker/presenter/c;

    move-result-object p1

    invoke-static {}, Lcom/phicomm/speaker/manager/a;->a()Lcom/phicomm/speaker/manager/a;

    move-result-object v0

    const-string v1, "ACCESS_TOKEN"

    invoke-virtual {v0, v1}, Lcom/phicomm/speaker/manager/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/phicomm/speaker/presenter/c;->a(Ljava/lang/String;)V

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRefreshTokenError: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/Object;)V

    return-void
.end method
