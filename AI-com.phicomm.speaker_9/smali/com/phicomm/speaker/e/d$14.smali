.class Lcom/phicomm/speaker/e/d$14;
.super Ljava/lang/Object;
.source "UnisoundManager.java"

# interfaces
.implements Lcom/phicomm/speaker/e/c/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/phicomm/speaker/e/d;->b(Lcom/phicomm/speaker/e/c/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/phicomm/speaker/e/c/d;

.field final synthetic b:Lcom/phicomm/speaker/e/d;


# direct methods
.method constructor <init>(Lcom/phicomm/speaker/e/d;Lcom/phicomm/speaker/e/c/d;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/phicomm/speaker/e/d$14;->b:Lcom/phicomm/speaker/e/d;

    iput-object p2, p0, Lcom/phicomm/speaker/e/d$14;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    .line 383
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$14;->b:Lcom/phicomm/speaker/e/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;Z)Z

    .line 384
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$14;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$14;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/e/c/d;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(ILjava/lang/String;)V
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$14;->b:Lcom/phicomm/speaker/e/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/phicomm/speaker/e/d;->a(Lcom/phicomm/speaker/e/d;Z)Z

    .line 392
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$14;->a:Lcom/phicomm/speaker/e/c/d;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/phicomm/speaker/e/d$14;->a:Lcom/phicomm/speaker/e/c/d;

    invoke-interface {v0, p1, p2}, Lcom/phicomm/speaker/e/c/d;->b(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
