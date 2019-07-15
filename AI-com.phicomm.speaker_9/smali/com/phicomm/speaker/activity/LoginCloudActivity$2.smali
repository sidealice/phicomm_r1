.class Lcom/phicomm/speaker/activity/LoginCloudActivity$2;
.super Lcom/phicomm/speaker/presenter/b/c;
.source "LoginCloudActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/activity/LoginCloudActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/activity/LoginCloudActivity;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$2;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-direct {p0}, Lcom/phicomm/speaker/presenter/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/phicomm/speaker/bean/CloudAccount;)V
    .locals 1

    .line 195
    invoke-static {}, Lcom/phicomm/speaker/f/ae;->a()V

    .line 196
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/phicomm/speaker/a/t;

    invoke-direct {v0}, Lcom/phicomm/speaker/a/t;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->d(Ljava/lang/Object;)V

    .line 197
    invoke-static {}, Lcom/phicomm/speaker/d/c;->a()V

    .line 198
    iget-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$2;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->d(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$2;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->b(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, -0xbb8

    .line 184
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/phicomm/speaker/activity/LoginCloudActivity$2;->a:Lcom/phicomm/speaker/activity/LoginCloudActivity;

    invoke-static {p1}, Lcom/phicomm/speaker/activity/LoginCloudActivity;->c(Lcom/phicomm/speaker/activity/LoginCloudActivity;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-static {p2}, Lcom/phicomm/speaker/f/ab;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
