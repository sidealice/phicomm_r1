.class Lcom/phicomm/speaker/e/d$12;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/unisound/lib/common/ICommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/phicomm/speaker/e/c/c;

.field final synthetic h:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/e/c/c;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$12;->h:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$12;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/phicomm/speaker/e/d$12;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/phicomm/speaker/e/d$12;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/phicomm/speaker/e/d$12;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/phicomm/speaker/e/d$12;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/phicomm/speaker/e/d$12;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/phicomm/speaker/e/d$12;->g:Lcom/phicomm/speaker/e/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 8

    const-string v0, "UnisoundManager"

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateCode=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/f/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    const v0, 0x61a8d

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x61a8e

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "UnisoundManager"

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device offline! stateCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$12;->g:Lcom/phicomm/speaker/e/c/c;

    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/phicomm/speaker/e/c/c;->a(IZLjava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "UnisoundManager"

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bind device fail! stateCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/phicomm/speaker/f/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$12;->g:Lcom/phicomm/speaker/e/c/c;

    invoke-static {p1}, Lcom/phicomm/speaker/e/c/a;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/phicomm/speaker/e/c/c;->a(IZLjava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/phicomm/speaker/e/d$12;->h:Lcom/phicomm/speaker/e/d;

    invoke-static {p1}, Lcom/phicomm/speaker/e/d;->b(Lcom/phicomm/speaker/e/d;)Lcom/phicomm/speaker/model/d;

    move-result-object v0

    iget-object v1, p0, Lcom/phicomm/speaker/e/d$12;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/phicomm/speaker/e/d$12;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/phicomm/speaker/e/d$12;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/phicomm/speaker/e/d$12;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/phicomm/speaker/e/d$12;->e:Ljava/lang/String;

    iget-object v6, p0, Lcom/phicomm/speaker/e/d$12;->f:Ljava/lang/String;

    new-instance v7, Lcom/phicomm/speaker/e/d$12$1;

    invoke-direct {v7, p0}, Lcom/phicomm/speaker/e/d$12$1;-><init>(Lcom/phicomm/speaker/e/d$12;)V

    invoke-virtual/range {v0 .. v7}, Lcom/phicomm/speaker/model/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/phicomm/speaker/net/a/a;)V

    .line 329
    :goto_1
    invoke-static {}, Lcom/unisound/lib/UnisDeviceAssistant;->getInstance()Lcom/unisound/lib/UnisDeviceAssistant;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/unisound/lib/UnisDeviceAssistant;->removeBindDeviceListener(Lcom/unisound/lib/common/ICommonCallback;)V

    return-void
.end method
