.class Lcom/phicomm/speaker/presenter/c$4$1;
.super Ljava/lang/Object;
.source "CloudAccountPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c$4;->a(Lcom/phicomm/speaker/bean/CloudAccount;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/bean/CloudAccount;

.field final synthetic b:Lcom/phicomm/speaker/presenter/c$4;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/c$4;Lcom/phicomm/speaker/bean/CloudAccount;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iput-object p2, p0, Lcom/phicomm/speaker/presenter/c$4$1;->a:Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 111
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p2, p2, Lcom/phicomm/speaker/presenter/c$4;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/manager/a;->c(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->a:Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {p1}, Lcom/phicomm/speaker/bean/CloudAccount;->getUid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string p2, "CLOUD_ACCOUNT_UID"

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4$1;->a:Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CloudAccount;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string p2, "ACCESS_TOKEN"

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4$1;->a:Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CloudAccount;->getAccess_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string p2, "REFRESH_TOKEN"

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4$1;->a:Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CloudAccount;->getRefresh_token()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string p2, "REFRESH_TOKEN_EXPIRE"

    iget-object v0, p0, Lcom/phicomm/speaker/presenter/c$4$1;->a:Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {v0}, Lcom/phicomm/speaker/bean/CloudAccount;->getRefresh_token_expire()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string p2, "LOGIN_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->g(Lcom/phicomm/speaker/presenter/c;)V

    .line 120
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 121
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$4$1;->a:Lcom/phicomm/speaker/bean/CloudAccount;

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/c;->a(Lcom/phicomm/speaker/bean/CloudAccount;)V

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p1, p1, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/c;->d()V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 3

    .line 128
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p2, p2, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/c;->h(Lcom/phicomm/speaker/presenter/c;)V

    .line 129
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p2, p2, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 130
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$4$1;->b:Lcom/phicomm/speaker/presenter/c$4;

    iget-object p2, p2, Lcom/phicomm/speaker/presenter/c$4;->b:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f0150

    invoke-static {v2}, Lcom/phicomm/speaker/f/f;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lcom/phicomm/speaker/presenter/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
