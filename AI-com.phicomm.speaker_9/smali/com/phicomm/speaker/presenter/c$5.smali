.class Lcom/phicomm/speaker/presenter/c$5;
.super Ljava/lang/Object;
.source "CloudAccountPresenter.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/presenter/c;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/presenter/c;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/presenter/c;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->d(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/manager/a;

    move-result-object p1

    const-string p2, "LOGIN_TIMESTAMP"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/phicomm/speaker/manager/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->i(Lcom/phicomm/speaker/presenter/c;)V

    .line 153
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p1}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/phicomm/speaker/presenter/b/c;->a(Lcom/phicomm/speaker/bean/CloudAccount;)V

    .line 156
    :cond_0
    iget-object p1, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-virtual {p1}, Lcom/phicomm/speaker/presenter/c;->d()V

    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 1

    .line 161
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/c;->j(Lcom/phicomm/speaker/presenter/c;)V

    .line 163
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/c;->k(Lcom/phicomm/speaker/presenter/c;)V

    .line 164
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 165
    iget-object p2, p0, Lcom/phicomm/speaker/presenter/c$5;->a:Lcom/phicomm/speaker/presenter/c;

    invoke-static {p2}, Lcom/phicomm/speaker/presenter/c;->b(Lcom/phicomm/speaker/presenter/c;)Lcom/phicomm/speaker/presenter/b/c;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f0f0150

    invoke-static {v0}, Lcom/phicomm/speaker/f/f;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/phicomm/speaker/presenter/b/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
